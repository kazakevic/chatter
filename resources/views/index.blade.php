@extends('app')

@section('content')
    <div class="row">
        <div class="col-md-8 chatContainer" >

            <ul id="messages">

            </ul>

        </div>


        <div class="col-md-4">


            <form action="">
                <input id="msg" autocomplete="off" /><button class="btn btn-default">Send</button>
            </form>
            <div id="response"></div>
        </div>



    </div>


@stop