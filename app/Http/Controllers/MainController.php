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
    private $question_id = 0;

    //
    public function match()
    {
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


        //if message is short use first method
        if ($question->size <= 5) {

            $first = (object)$this->firstLevel($question->main_keys, $question->message);

            if ($first->match_count >= Config::get('botSettings.minKeysToMatch') && $first->max_match_value >= Config::get('botSettings.minValue')) {
                $this->question_id = $first->question_id;
            } else {
                //try seconde level bcause words can have other order or other keys
                $second = (object)$this->secondLevel($question->keys, $question->message);
                $size = $second->match_count / $question->size;

                if ($second->match_count >= Config::get('botSettings.minKeysToMatch')) {
                    $this->question_id = $second->question_id;
                } else {
                    $this->question_id = 0;
                }
            }
        } else if ($question->size > 5 || $this->question_id == 0) {

            $second = (object)$this->secondLevel($question->keys, $question->message);

            $size = $second->match_count / $question->size;

            if ($size >= Config::get('botSettings.minMatchValue') && $second->max_match_value >= Config::get('botSettings.minValue')) {
                $this->question_id = $second->question_id;
            } else {
                $this->question_id = 0;
            }
        }

//if question found
        if ($this->question_id != 0) {
            //now read asnwer from DB
            $q = Question::find($this->question_id);

            if ($q->answer_id == 0) {
                if ($sentecne->checkForKasTai($question->message)) {
                    $key = $sentecne->getKasTaiKey($question->message);

                    if ($serv->getLtWikiDescription($key) != "")
                        $sentecne->setAsnwer($serv->getLtWikiDescription($key));
                    else
                        $sentecne->setAsnwer("null");
                } else {
                    $sentecne->setAsnwer("null");
                }
            } else {
                $ans = Answer::where('id', $q->answer_id)->first();
                if ($sentecne->getAnswer() != "null")
                    $sentecne->setAsnwer($sentecne->getAnswer() . ". " . $ans->answer);
                else
                    $sentecne->setAsnwer($ans->answer);
            }
        } else {
            //check if it's a question
            if ($sentecne->checkForQuestion($question->message) || $sentecne->checkForQuestionMark($question->message)) {
                //Write question to DB
                $q = new Question();
                if (Question::where('question', $question->message)->count() == 0) {
                    $q->question = mb_strtolower($question->message);
                    $q->save();
                }

                if ($sentecne->checkForKasTai($question->message)) {
                    $key = $sentecne->getKasTaiKey($question->message);

                    if (!empty($serv->getLtWikiDescription($key)) != "")
                        $sentecne->setAsnwer($serv->getLtWikiDescription($key));
                    else
                        $sentecne->setAsnwer("null");
                } else
                    $sentecne->setAsnwer("null");

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

    private function firstLevel($main_keys, $msg)
    {
        //returns ID of question
        //returns 0 if question was not found

        //try to identify question by main keyword
        //and first 3 longest keywords

        $match_count = array();
        $match_values = array();
        $question_id = 0;
        $max_value = 0;
        $sentecne = new SentenceController();
        $questions = Question::all();


        foreach ($questions as $question) {

            //Array of single question

            if (!$sentecne->checkForLt($msg)) {
                $q_keys = explode('; ', $sentecne->replaceLt($question->key));
                $quest = $sentecne->replaceLt($question->question);
            } else {
                $q_keys = explode('; ', $question->key);
                $quest = $question->question;
            }

            similar_text($msg, $quest, $match_value);
            $match_values[$question->id] = $match_value;
            //how much same keys found
            $result = array_intersect($main_keys, $q_keys);

            if (count($result) > 0) {
                //array index is question ID in DB
                //Count of occurencies for each question
                $match_count[$question->id] = count($result);
            }
        }


        //Get the question id by comparing by keywords
        if (!empty($match_count)) {
            $max_value = max($match_count);

            $question_id = array_search($max_value, $match_count);
        }
        //Get the question id by comparing by similiar text
        if (!empty($match_values)) {
            $max_match_value = max($match_values);

            $question_id2 = array_search($max_match_value, $match_values);
        }

        $data = array(
            'question_id' => $question_id, //question id by match_count
            'question_id2' => $question_id2, //question id by max_match_value
            'match_count' => $max_value,
            'max_match_value' => $max_match_value
        );
        return $data;


    }

    private function secondLevel($keys, $msg)
    {
        //this method compares all extracted keywords
        //without excluded stopwrods

        $match_count = array();
        $match_values = array();
        $question_id = 0;
        $question_id2 = 0;
        $max_value = 0;
        $sentecne = new SentenceController();

        $questions = Question::all();

        foreach ($questions as $question) {

            //Array of single question

            if (!$sentecne->checkForLt($msg)) {
                $q_keys = $sentecne->getSentenceKeys($sentecne->replaceLt($question->question));
                $quest = $sentecne->replaceLt($question->question);
            } else {
                $q_keys = $sentecne->getSentenceKeys($question->question);
                $quest = $question->question;
            }

            similar_text($msg, $quest, $match_value);
            $match_values[$question->id] = $match_value;

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
        //Get the question id by comparing by similiar text
        if (!empty($match_values)) {
            $max_match_value = max($match_values);

            $question_id2 = array_search($max_match_value, $match_values);
        }

        $data = array(
            'question_id' => $question_id, //question id by match_count
            'question_id2' => $question_id2, //question id by max_match_value
            'match_count' => $max_value,
            'max_match_value' => $max_match_value
        );
        // return $question_id;
        return $data;

    }

}
