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
}
