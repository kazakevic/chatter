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
        //get message
        $message = Input::get('message');


        //Get stop words array from database
        $stopwords = DB::table('stopwords')->pluck('word');
        //extract keys from messagae


        $keys = $this->extractKeys($message, $stopwords);
        //keywords count from input message
        $keys_count = count($keys);


        //now get keys from DB by keys from message

        $question = Question::all();

       // foreach ($question_keys as $k)
       // {
       //     $question
       // }




        print_r($keys);
        
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
        $stopwords = array_map(function($x){return trim(strtolower($x));}, $stopwords);

        // Replace all non-word chars with comma
        $pattern = '/[^\p{L}]/u';
        $text = preg_replace($pattern, ',', $text);

        // Create an array from $text
        $text_array = explode(",",$text);

        // remove whitespace and lowercase words in $text
        $text_array = array_map(function($x){return trim(strtolower($x));}, $text_array);

        foreach ($text_array as $term) {
            if (!in_array($term, $stopwords)) {
                $keywords[] = $term;
            }
        };

//array of UNIQUE keywoards without stopwords
        return array_filter(array_unique($keywords));
    }






}
