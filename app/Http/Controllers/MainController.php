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

        //$answer = "null";
        $sentecne = new SentenceController();
        $serv = new ServicesController();


        //get message
        $message = Input::get('message');
        if (!$message || strlen($message) <= 2)
            return;


        if ($sentecne->checkForGreeting($message)) {
            $sentecne->setAsnwer($sentecne->generateGreeting());
            // $sentecne->printAnswer($sentecne->generateGreeting());
        }

        //extract keys from messagae
        $keys = $sentecne->getSentenceKeys($message);

        usort($keys, function ($a, $b) {
            $difference = strlen($a) - strlen($b);

            return $difference ?: strcmp($a, $b);
        });
        $keys = array_reverse($keys);

        //Get 3 longest keys
        $main_keys = array_slice($keys, 0, 3, true);


        $dat = array(
            'keys' => $keys,
            'main_keys' => $main_keys,
            'size' => count($keys),
            'message' => $message
        );

        $sentecne->setQuestionData($dat);

        $question = (object)$sentecne->getQuestionData();


        $first_test_id = $this->firstLevel($question->main_keys);
        $second_test_id = $this->secondLevel($question->keys);

        $first = (object)$this->firstLevel($question->main_keys);
        $second = (object)$this->secondLevel($question->keys);


        //if message is short use first method
        if ($question->size <= 5) {
            $first = (object)$this->firstLevel($question->main_keys);
            if ($first->match_count >= Config::get('botSettings.minKeysToMatch')) {
                $question_id = $first->question_id;
            } else {
                $question_id = 0;
            }

        } else if ($question->size > 5) {
            $second = (object)$this->secondLevel($question->keys);
            $size = $second->match_count / $question->size;
            if ($size >= Config::get('botSettings.minMatchValue')) {
                $question_id = $second->question_id;
            } else {
                $question_id = 0;
            }
        }


        if ($question_id != 0) {
            //now read asnwer from DB
            $q = Question::find($question_id);

            if ($q->answer_id == 0) {
                if ($sentecne->checkForKasTai($question->message)) {
                    $key = $sentecne->getKasTaiKey($question->message);
                    $sentecne->setAsnwer($serv->getLtWikiDescription($key));
                } else {
                    $sentecne->setAsnwer("null");
                }
            } else {
                $ans = Answer::where('id', $q->answer_id)->first();
                $sentecne->setAsnwer($ans->answer);
            }
        } else {
            //check if it's a question
            if ($sentecne->checkForQuestion($question->message) || $sentecne->checkForQuestionMark($question->message)) {
                //Write question to DB
                $q = new Question();
                $q->question = strtolower($question->message);
                $q->save();

                if ($sentecne->checkForKasTai($question->message)) {
                    $key = $sentecne->getKasTaiKey($question->message);
                    $sentecne->setAsnwer($serv->getLtWikiDescription($key));
                }


            }
            //Need method to make answer if not answerr for question is found
        }

        //Generate and output asnwer
        if ($sentecne->getAnswer() == "null") {
            echo $question->message . "- Ką tai reiškia?";
        } else {
            $sentecne->printAnswer($sentecne->getAnswer());
        }

    }

    private function firstLevel($main_keys)
    {
        //returns ID of question
        //returns 0 if question was not found

        //try to identify question by main keyword
        //and first 3 longest keywords

        $match_count = array();
        $question_id = 0;
        $max_value = 0;

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

//            if ($max_value >= Config::get('botSettings.minKeysToMatch')) {
                $question_id = array_search($max_value, $match_count);
//            }

        }
        $data = array(

            'question_id' => $question_id,
            'match_count' => $max_value

        );
        return $data;
        //return $question_id;

    }

    private function secondLevel($keys)
    {
        //this method compares all extracted keywords
        //without excluded stopwrods

        $match_count = array();
        $question_id = 0;
        $max_value = 0;
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

            // if ($max_value >= Config::get('botSettings.minKeysToMatch')) {
                $question_id = array_search($max_value, $match_count);
            //  }

        }
        $data = array(

            'question_id' => $question_id,
            'match_count' => $max_value

        );
        // return $question_id;
        return $data;

    }

}
