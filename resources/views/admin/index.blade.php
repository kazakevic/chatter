@extends('app')

@section('content')
    <div class="row">
        <div class="col-md-8 chatContainer">

            <ul id="messages">

            </ul>

        </div>


        <div class="col-md-10">

            <h3>Questions:</h3>
            <a href="{{ url('admin/questions') }}">
                <button class="btn btn-info" type="button">
                    Not Asnwered <span class="badge"> {!! $notAnswered !!} </span>
                </button>
            </a>

            <button class="btn btn-info" type="button">
                Asnwered <span class="badge"> {!! $answered !!} </span>
            </button>

            <button class="btn btn-info" type="button">
                Total <span class="badge"> {!! $totalQuestions !!} </span>
            </button>
            <br/>

            <h3>Identificators:</h3>
            <button class="btn btn-info" type="button">
                Total <span class="badge"> {!! $totalIdent !!} </span>
            </button>

        </div>


    </div>


@stop