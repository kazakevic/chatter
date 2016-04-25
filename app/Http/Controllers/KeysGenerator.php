<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Question;
use App\stopword;

use App\Http\Requests;


class KeysGenerator extends Controller
{
    //
    public function generate()
    {
        $questions = Question::where('key', '0')->get();


        foreach ($questions as $q)
        {
            $msg = $q->question;
            $stopwords = DB::table('stopwords')->pluck('word');

            $keys = $this->extractKeys($msg, $stopwords);

            usort($keys, function($a, $b) {
                $difference =  strlen($a) - strlen($b);

                return $difference ?: strcmp($a, $b);
            });

            $keys = array_reverse($keys);
            //Get 3 longest keys
            $keys = array_slice($keys, 0,3, true);


            $keys_str = implode ("; ", $keys);
            //print_r($keys);
           // print_r($keys_str);

            $q->key = $keys_str;
            $q->main_key = $keys[0];
            $q->length = count($keys);
            $qq = $q->save();
            if($qq)
            {
                echo "Keys generated! <Br/>";
            }
            else
            {
               echo "Erorr";
            }

        }

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
