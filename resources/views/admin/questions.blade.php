@extends('app')

@section('content')

    <div class="row">
        <div class="col-md-8">

            <?php $i = 0; ?>
            <table class="table table-striped">
                <th>#</th>
                <th>Question</th>
                <th>Main keys</th>
                <th>Answer ID</th>
                <th>Edit</th>
                <th>Delete</th>
                <th>Answer</th>
                @foreach($questions as $q)
                    <?php $i++; ?>
                    <tr>
                        <td>{!! $i !!}</td>
                        <td>{!! $q->question !!}</td>
                        <td>{!! $q->key !!}</td>
                        <td>{!! $q->answer_id !!}</td>
                        <td><a href="{{ url('admin/server/'.$q->id.'/edit') }}"><span
                                        class="glyphicon glyphicon-pencil"></span> Edit</a></td>
                        <td><a href="#" data-href="{{ url('admin/server/'.$q->id.'/delete') }}" data-toggle="modal"
                               data-target="#confirm-delete"><span class="glyphicon glyphicon-remove"></span> Delete</a>
                        </td>
                        <td><a href="{{ url('admin/question/'.$q->id.'/answer') }}" >
                                <span class="glyphicon glyphicon-earphone"></span>Answer</a>
                        </td>
                    </tr>

                @endforeach
            </table>

        </div>
    </div>


@stop