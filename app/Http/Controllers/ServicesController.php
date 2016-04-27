<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Requests;

class ServicesController extends Controller
{
    //Acces Wiki Pedia to get description
    public function getWikiDescription($keyword)
    {
        $url = 'http://lookup.dbpedia.org/api/search.asmx/KeywordSearch?QueryString=' . urlencode($keyword) . '&MaxHits=1';
        $xml = simplexml_load_file($url);
        return $xml->Result->Description;
    }

    public function getLtWikiDescription($key)
    {
        $url = 'https://lt.wikipedia.org/w/api.php?format=xml&action=query&prop=extracts&exintro=&explaintext=&titles=' . urlencode($key);
        $str = file_get_contents($url);
        return $str;
    }
}
