<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Config;
use App\StopWord;
use App\Question;
use App\Answer;
use App\Identificator;


use App\Http\Requests;
use Illuminate\Support\Facades\Input;

class SentenceController extends Controller
{
    //
    public function search()
    {
        $match_count = array();
        //get message
        $message = Input::get('message');
        if (!$message)
            return;




        //extract keys from messagae
        $keys = $this->getSentenceKeys($message);

        //keywords count from input message
        $keys_count = count($keys);
        
        if ($keys_count < Config::get('botSettings.primitiveSentenceKeys'))
        {
            //make search in primitive questions database
            echo "Primitive base is empty";
            return;
        }


        //now get keys from DB by keys from message
        $questions = Question::all();


        foreach ($questions as $question) {
            //Array of single question
            $question_id = $question->id;
            $q_keys = explode('; ', $question->key);

            //how much same keys found
            $result = array_intersect($keys, $q_keys);
            if (count($result) > 0) {
                //array index is question ID in DB
                $match_count[$question->id] = count($result);
            }
        }
        // print_r($match_count);

        //get the biggest value from result array
        $match_count = array_filter($match_count);

        if(empty($match_count)) {
            //Send message that cant found the answer and send report
            //Save message if it's question
            echo "What? I don't understand...";
            return;
        }

        $max_value = max($match_count);


        if($max_value < Config::get('botSettings.minKeysToMatch'))
        {
            echo "I have no answer";
            return;
        }
        //biggest value array index == question_id - that's asnwer!
        $question_id = array_search($max_value, $match_count);

        //now read asnwer from DB

        $q = Question::find($question_id);
        $answer = Answer::find($q['answer_id']);

        $answer = $answer['answer'];

        //check if this first question and if it have greeting key
        if($this->checkForGreeting($message))
            $answer = "Laba diena :) ".$answer;
        
        //Generate and output asnwer
        echo $answer;

    }

//returns array of sentence keys
    private function getSentenceKeys($sentence)
    {
        //Get stop words array from database
        $stopwords = DB::table('stopwords')->pluck('word');
        return $this->extractKeys($sentence, $stopwords);
    }


    private function checkIfQuestion($message)
    {
        if (preg_match('/\?/',$message))
            return true;
    }
    private function contains($str, array $arr)
    {
        foreach($arr as $a) {
            if (stripos($str, $a) !== false) return true;
        }
        return false;
    }
    private function checkForGreeting($msg)
    {
        $greeting = Identificator::where('identity', 'greeting')->get();
        
        if(contains($msg, $greeting))
        return true;
        else
        return false;
    }

    private function extractKeys($text, $stopwords)
    {
        // Remove line breaks and spaces from stopwords
        $stopwords = array_map(function ($x) {
            return trim(mb_strtolower($x));
        }, $stopwords);

        // Replace all non-word chars with comma
        $pattern = '/[^\p{L}]/u';
        $text = preg_replace($pattern, ',', $text);

        // Create an array from $text
        $text_array = explode(",", $text);

        // remove whitespace and lowercase words in $text
        $text_array = array_map(function ($x) {
            return trim(mb_strtolower($x));
        }, $text_array);

        foreach ($text_array as $term) {
            if (!in_array($term, $stopwords)) {
                $keywords[] = $term;
            }
        };

//array of UNIQUE keywoards without stopwords
        return array_filter(array_unique($keywords));
    }


}
