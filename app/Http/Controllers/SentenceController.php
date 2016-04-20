<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\StopWord;
use App\Question;
use App\Answer;


use App\Http\Requests;
use Illuminate\Support\Facades\Input;

class SentenceController extends Controller
{
    //
    public function Search()
    {
        $match_count = array();

        //get message
        $message = Input::get('message');
        if(!$message)
            return;


        //extract keys from messagae
        $keys = $this->getSentenceKeys($message);

        //keywords count from input message
        $keys_count = count($keys);

        //now get keys from DB by keys from message
        $questions = Question::all();


        foreach ($questions as $question)
        {

            //Array of single question
            $question_id = $question->id;
            $q_keys = explode('; ', $question->key);

            //how much same keys found
            $result = array_intersect($keys, $q_keys);
            if(count($result)>0)
            $match_count[$question->id] = count($result);

        }
       // print_r($match_count);

        //get the biggest value
        $max_value = max($match_count);
        //biggest value array index == question_id - that's asnwer!
        $question_id = array_search($max_value, $match_count);
        
        //now read asnwer from DB
        
        $q = Question::find($question_id);
        $answer = Answer::find($q['answer_id']);

       echo $answer['answer'];

    }

//returns array of sentence keys
    private function getSentenceKeys($sentence)
    {
        //Get stop words array from database
        $stopwords = DB::table('stopwords')->pluck('word');
        return $this->extractKeys($sentence, $stopwords);

    }


    private function Checker($message)
    {
        $message = strtolower($message);
        if (strstr($message, "labas"))
            return true;
        else
            return false;
    }


    private function extractKeys($text, $stopwords) {

        // Remove line breaks and spaces from stopwords
        $stopwords = array_map(function($x){return trim(mb_strtolower($x));}, $stopwords);

        // Replace all non-word chars with comma
        $pattern = '/[^\p{L}]/u';
        $text = preg_replace($pattern, ',', $text);

        // Create an array from $text
        $text_array = explode(",",$text);

        // remove whitespace and lowercase words in $text
        $text_array = array_map(function($x){return trim(mb_strtolower($x));}, $text_array);

        foreach ($text_array as $term) {
            if (!in_array($term, $stopwords)) {
                $keywords[] = $term;
            }
        };

//array of UNIQUE keywoards without stopwords
        return array_filter(array_unique($keywords));
    }






}
