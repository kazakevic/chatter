<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Question;
use App\Answer;
use App\Identificator;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Config;

use App\Http\Requests;
use Illuminate\Support\Facades\Input;

class Admin extends Controller
{
    //
    public function index()
    {
        //get info
        $data = array(
            'notAnswered' => Question::where('answer_id', 0)->count(),
            'answered' => Question::where('answer_id', '!=', 0)->count(),
            'totalQuestions' => Question::all()->count(),
            'totalIdent' => Identificator::all()->count()
        );

        return view('admin/index', $data);
    }


    public function showQuestions()
    {
        $data = array(
            'questions' => Question::where('answer_id', 0)->get()
        );
        return view('admin/questions', $data);

    }

    public function answer($id)
    {
        $data = array(
            'qid' => $id
        );
        return view('admin/writeAnswer', $data);
    }

    public function answerSave()
    {
        $answer = Input::get('answer');
        $q_id = Input::get('qid');

        $ans = new Answer();
        $ans->answer = $answer;
        $ans->save();

        $q = Question::where('id', $q_id)->first();
        $q->answer_id = $ans->id;
        $q->save();

        return redirect('admin/questions');


    }

}
