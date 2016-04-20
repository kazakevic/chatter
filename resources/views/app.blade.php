<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <?xml version="1.0" encoding="UTF-8"?>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Chat bot</title>



    <style>
        .chatContainer
        {
            height:400px;
            overflow-y: scroll;
            overflow-x: hidden;
            padding: 30px;
        }


        .send {
            position: relative;
            width: 200px;
            height: 100%;
            min-height: 60px;
            background: #3EADAB;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px;
            list-style-type: none;
            padding:10px;
            color:#FFFFFF;
            font-size:16px;
            font-family: Arial;
        }

        .send:after {
            content: "";
            position: absolute;
            top: 19px;
            left: -25px;
            border-style: solid;
            border-width: 9px 25px 9px 0;
            border-color: transparent #3EADAB;
            display: block;
            width: 0;
            z-index: 1;
        }


        .reply {
            position: relative;
            width: 200px;
            height: 100%;
            min-height: 60px;
            background: #00b3ee;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            border-radius: 5px;
            list-style-type: none;
            padding:10px;
            color:#FFFFFF;
            font-size:16px;
            font-family: Arial;
        }

        .reply:after {
            content: "";
            position: absolute;
            top: 19px;
            right: -25px;
            border-style: solid;
            border-width: 9px 0 9px 25px;
            border-color: transparent #00b3ee;
            display: block;
            width: 0;
            z-index: 1;
        }


    </style>
</head>
<body>


<nav class="navbar navbar-default navbar-static-top">
    <div class="container">
        ...
    </div>
</nav>
<div class="container">


    <div class="row">
        <div class="col-md-9">
            @yield('content')
        </div>


    </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/socket.io/1.4.5/socket.io.min.js"></script>

<script   src="http://code.jquery.com/jquery-2.2.3.min.js"   integrity="sha256-a23g1Nt4dtEYOj7bR+vTu7+T8VP13humZFBJNIYoEJo="   crossorigin="anonymous"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
<script>
    try{
        var client = io.connect('http://127.0.0.1:3000');
        client.on('connect',function (data) {
            //client.emit('subscribeTo', { channel: 'my_first_channel' });
        });
//submiting message
        $('form').submit(function(e){
            var msg = $('#msg').val();
            e.preventDefault();

//send input to PHP and emit response
            $.ajax({
                type: "POST",
                headers: { 'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content') },
                url: window.location+'sentence/search',
                data: {message: msg},
                success: function( res ) {
                    if (res != "")
                    client.emit('reply', res);
                }
            });
//emit own message
            client.emit('chat message', $('#msg').val());
            $('#msg').val('');
            return false;
        });
//append submited message
        client.on('chat message', function(msg){
            $('#messages').append($("<br/><br/><li class='send'>").text(msg));
            $('.chatContainer').scrollTop(1E10);
        });

//Display reply
        client.on('reply', function (msg) {
            $('#messages').append($("<br/><br/><li class='reply pull-right'>").text(msg));
            $('.chatContainer').scrollTop(1E10);
        });
    } catch(e){
        console.log('Socket ERROR\n');
        console.log(e);
    }
</script>



</body>
</html>
