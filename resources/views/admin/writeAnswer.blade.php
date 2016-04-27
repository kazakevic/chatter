@extends('app')

@section('content')

    <div class="row">
        <div class="col-md-8">

            <div class="panel panel-default">
                <div class="panel-body">
                    @if (count($errors) > 0)
                        <div class="alert alert-danger">
                            <strong>Whoops!</strong> There were some problems with your input.<br><br>
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif


                    {!! Form::open(['url' => 'admin/answer/save' ]) !!}
                        {{ Form::hidden('qid', $qid) }}

                    <div class="form-group">
                        {!! Form::label('answer', 'Write your answer:', ['class' => 'col-md-4 control-label']) !!}
                        {!! Form::textarea('answer', "", ['class' => 'form-control']) !!}
                    </div>


                    <div class="form-group">
                        {!! Form::submit('Save answer', ['class' => 'btn btn-primary btn-md']) !!}
                    </div>


                    {!! Form::close() !!}


                </div>
            </div>

        </div>
    </div>


@stop