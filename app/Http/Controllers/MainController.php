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

class MainController extends Controller
{
    
    //
    public function match()
    {
        $sentecne = new SentenceController();


        //get message
        $message = Input::get('message');
        if (!$message)
            return;

        //extract keys from messagae
        $keys = $sentecne->getSentenceKeys($message);

        usort($keys, function($a, $b) {
            $difference =  strlen($a) - strlen($b);

            return $difference ?: strcmp($a, $b);
        });
        $keys = array_reverse($keys);

        //Get 3 longest keys
        $main_keys= array_slice($keys, 0,3, true);


        $first_test_id = $this->firstLevel($main_keys);
        $second_test_id = $this->secondLevel($keys);

        if($this->firstLevel($main_keys) != 0)
            $question_id = $this->firstLevel($main_keys);
        else if($this->secondLevel($keys) !=0)
            $question_id = $this->secondLevel($keys);
        else
        {
            $question_id = 0;
        }


        if($question_id != 0)
        {

            //now read asnwer from DB
            $q = Question::find($question_id);
            $answer = Answer::find($q['answer_id']);

            $answer = $answer['answer'];

            //check if this first question and if it have greeting key
            if ($sentecne->checkForGreeting($message))
                $answer = $sentecne->generateGreeting() . $answer;
            else
                $answer = $answer;
        }
        else
        {
            //Need method to make answer if not answerr for question is found
            $answer = "Prašome palaukti, mes tiksliname informaciją.";
        }

        //Generate and output asnwer
        echo $answer;

    }

    private function firstLevel($main_keys)
    {
        //returns ID of question
        //returns 0 if question was not found

        //try to identify question by main keyword
        //and first 3 longest keywords

        $match_count = array();
        $question_id = 0;

        $questions = Question::all();

        foreach ($questions as $question) {

            //Array of single question
            $q_keys = explode('; ', $question->key);

            //how much same keys found
            $result = array_intersect($main_keys, $q_keys);

            if (count($result) > 0) {
                //array index is question ID in DB
                //Count of occurencies for each question
                $match_count[$question->id] = count($result);
            }
        }

        if (!empty($match_count)) {
            $max_value = max($match_count);

            if($max_value >= Config::get('botSettings.minKeysToMatch')) {
                $question_id = array_search($max_value, $match_count);
            }
        }
        return $question_id;

    }

    private function secondLevel($keys)
    {
        //this method compares all extracted keywords
        //without excluded stopwrods

        $match_count = array();
        $question_id = 0;
        $sentecne = new SentenceController();

        $questions = Question::all();

        foreach ($questions as $question) {

            //Array of single question
            $q_keys = $sentecne->getSentenceKeys($question->question);

            //how much same keys found
            $result = array_intersect($keys, $q_keys);

            if (count($result) > 0) {
                //array index is question ID in DB
                //Count of occurencies for each question
                $match_count[$question->id] = count($result);
            }
        }

        if (!empty($match_count)) {
            $max_value = max($match_count);

            if($max_value >= Config::get('botSettings.minKeysToMatch')) {
                $question_id = array_search($max_value, $match_count);
            }
        }
        return $question_id;

    }

}
