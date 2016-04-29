<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', function () {
    return view('index');
});
Route::post('sentence/search', 'SentenceController@search');
Route::post('main/match', 'MainController@match');
Route::get('gen/keys', 'KeysGenerator@generate');
//Route::get('admin', 'Admin@index');
Route::get('admin/questions', 'Admin@showQuestions');
Route::get('admin/question/{id}/answer', 'Admin@answer');
Route::post('admin/answer/save', 'Admin@answerSave');


Route::auth();

Route::get('/home', 'HomeController@index');


Route::get('admin', [
    'middleware' => 'auth',
    'uses' => 'Admin@index'
]);
