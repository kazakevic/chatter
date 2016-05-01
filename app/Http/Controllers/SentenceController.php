<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Config;
use App\StopWord;
use App\Question;
use App\Answer;
use App\Identificator;
use App\RandomPair;


use App\Http\Requests;
use Illuminate\Support\Facades\Input;

class SentenceController extends Controller
{
    private $match_ratio = 0;
    private $answer = "null";
    private $ratio_data = array();
    private $question_data = array();

    public function setQuestionData($data)
    {
        $this->question_data = $data;
    }

    public function getQuestionData()
    {
        return $this->question_data;
    }

    public function setRatio($ratio_data)
    {
        $this->match_ratio = $ratio_data;
    }

    public function getRatio()
    {
        return $this->ratio_data;
    }

    public function setAsnwer($str)
    {
        $this->answer = $str;
    }

    public function getAnswer()
    {
        return $this->answer;
    }

    //returns array of sentence keys
    public function getSentenceKeys($sentence)
    {
        //Get stop words array from database
        $stopwords = DB::table('stopwords')->pluck('word');
        return $this->extractKeys($sentence, $stopwords);
    }

    public function checkIfQuestion($message)
    {
        if (preg_match('/\?/', $message))
            return true;
    }

    public function contains($str, array $arr)
    {
        foreach ($arr as $a) {
            if (stripos($str, $a) !== false) return true;
        }
        return false;
    }

    public function checkForGreeting($msg)
    {
        $keys = array();
        $greeting = Identificator::where('identity', 'greeting')->get();
        foreach ($greeting as $g) {
            $keys[] = $g->key;
        }

        if ($this->contains($msg, $keys))
            return true;
        else
            return false;
    }

    public function generateGreeting()
    {
        // $gr = array();
        $greetings = RandomPair::where('id_key', 'polite_greeting')->first();

        $gr = explode(", ", $greetings->pair);

        //$greetings = array("Laba diena. ", "Sveiki. ", "Gerą dieną. ");
        $k = array_rand($gr);
        return $gr[$k];
    }

    public function extractKeys($text, $stopwords)
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

    public function printAnswer($data)
    {
        if (Config::get('botSettings.simulateConversation'))
            sleep(rand(Config::get('botSettings.simulateDelayMin'), Config::get('botSettings.simulateDelayMax')));
        if (Config::get('botSettings.addSmiley'))
            $answer = $data . " :-) ";
        $this->setAsnwer($answer);
        echo $this->getAnswer();
    }

    public function spellCheck($message)
    {
        $data = array($message);
        $data_string = json_encode($data);
        $ch = curl_init('http://itpu.semantika.lt/Proxy/api/chains/morph');
        curl_setopt($ch, CURLOPT_CUSTOMREQUEST, "POST");
        curl_setopt($ch, CURLOPT_POSTFIELDS, $data_string);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, array(
                'Content-Type: application/json',
                'Content-Length: ' . strlen($data_string))
        );
        $result = curl_exec($ch);

    }

    public function clean($string)
    {
        //$string = str_replace(' ', '-', $string); // Replaces all spaces with hyphens.
        $string = preg_replace('/[^\p{L}]/u', ' ', $string); // Removes special chars.

        return strlower($string);
    }

    public function checkForQuestion($msg)
    {
        {
            $keys = array();
            $quest = Identificator::where('identity', 'question')->get();
            foreach ($quest as $g) {
                $keys[] = $g->key;
            }

            if ($this->contains($msg, $keys))
                return true;
            else
                return false;
        }
    }

    public function checkForQuestionMark($msg)
    {
        if (strpos($msg, '?') !== false) {
            return true;
        } else {
            return false;
        }
    }

    public function checkForKasTai($str)
    {
        if (strpos($str, 'kas tai') !== false) {
            return true;
        } else
            return false;
    }

    public function getKasTaiKey($str)
    {
        $str = strtolower($str);
        $s = explode("kas tai", $str);
        $key = preg_replace('/[-?]/', '', $s[1]);
        return $key;
    }

    public function replaceLt()
    {


        $replace = [
            'ą' => 'a',
            'ę' => 'e',
            'ė' => 'e',
            'č' => 'c',
            'ž' => 'z',
            'š' => 's',
            'ų' => 'u',
            'ū' => 'u'
        ];
        $r = str_replace(array_keys($replace), $replace, $string);
    }
}
