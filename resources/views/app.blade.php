<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <?xml version="1.0" encoding="UTF-8"?>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Chat bot</title>



    <style>

        body {
            background-color: #edeff2;
            font-family: "Calibri", "Roboto", sans-serif;
        }

        .chat_window {
            position: absolute;
            width: calc(100% - 20px);
            max-width: 800px;
            height: 500px;
            border-radius: 10px;
            background-color: #fff;
            left: 50%;
            top: 300px;
            transform: translateX(-50%) translateY(-50%);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.15);
            background-color: #f8f8f8;
            overflow: hidden;
        }

        .top_menu {
            background-color: #fff;
            width: 100%;
            padding: 20px 0 15px;
            box-shadow: 0 1px 30px rgba(0, 0, 0, 0.1);
        }
        .top_menu .buttons {
            margin: 3px 0 0 20px;
            position: absolute;
        }
        .top_menu .buttons .button {
            width: 16px;
            height: 16px;
            border-radius: 50%;
            display: inline-block;
            margin-right: 10px;
            position: relative;
        }
        .top_menu .buttons .button.close {
            background-color: #f5886e;
        }
        .top_menu .buttons .button.minimize {
            background-color: #fdbf68;
        }
        .top_menu .buttons .button.maximize {
            background-color: #a3d063;
        }
        .top_menu .title {
            text-align: center;
            color: #bcbdc0;
            font-size: 20px;
        }

        .messages {
            position: relative;
            list-style: none;
            padding: 20px 10px 0 10px;
            margin: 0;
            height: 347px;
            overflow: scroll;
        }
        .messages .message {
            clear: both;
            overflow: hidden;
            margin-bottom: 20px;
            transition: all 0.5s linear;
            opacity: 0;
        }
        .messages .message.left .avatar {
            background-color: #f5886e;
            float: left;
        }
        .messages .message.left .text_wrapper {
            background-color: #ffe6cb;
            margin-left: 20px;
        }
        .messages .message.left .text_wrapper::after, .messages .message.left .text_wrapper::before {
            right: 100%;
            border-right-color: #ffe6cb;
        }
        .messages .message.left .text {
            color: #c48843;
        }
        .messages .message.right .avatar {
            background-color: #fdbf68;
            float: right;
        }
        .messages .message.right .text_wrapper {
            background-color: #c7eafc;
            margin-right: 20px;
            float: right;
        }
        .messages .message.right .text_wrapper::after, .messages .message.right .text_wrapper::before {
            left: 100%;
            border-left-color: #c7eafc;
        }
        .messages .message.right .text {
            color: #45829b;
        }
        .messages .message.appeared {
            opacity: 1;
        }
        .messages .message .avatar {
            width: 60px;
            height: 60px;
            border-radius: 50%;
            display: inline-block;
        }
        .messages .message .text_wrapper {
            display: inline-block;
            padding: 20px;
            border-radius: 6px;
            width: calc(100% - 85px);
            min-width: 100px;
            position: relative;
        }
        .messages .message .text_wrapper::after, .messages .message .text_wrapper:before {
            top: 18px;
            border: solid transparent;
            content: " ";
            height: 0;
            width: 0;
            position: absolute;
            pointer-events: none;
        }
        .messages .message .text_wrapper::after {
            border-width: 13px;
            margin-top: 0px;
        }
        .messages .message .text_wrapper::before {
            border-width: 15px;
            margin-top: -2px;
        }
        .messages .message .text_wrapper .text {
            font-size: 18px;
            font-weight: 300;
        }

        .bottom_wrapper {
            position: relative;
            width: 100%;
            background-color: #fff;
            padding: 20px 20px;
            position: absolute;
            bottom: 0;
        }
        .bottom_wrapper .message_input_wrapper {
            display: inline-block;
            height: 50px;
            border-radius: 25px;
            border: 1px solid #bcbdc0;
            width: calc(100% - 160px);
            position: relative;
            padding: 0 20px;
        }
        .bottom_wrapper .message_input_wrapper .message_input {
            border: none;
            height: 100%;
            box-sizing: border-box;
            width: calc(100% - 40px);
            position: absolute;
            outline-width: 0;
            color: gray;
        }
        .bottom_wrapper .send_message {
            width: 140px;
            height: 50px;
            display: inline-block;
            border-radius: 50px;
            background-color: #a3d063;
            border: 2px solid #a3d063;
            color: #fff;
            cursor: pointer;
            transition: all 0.2s linear;
            text-align: center;
            float: right;
        }
        .bottom_wrapper .send_message:hover {
            color: #a3d063;
            background-color: #fff;
        }
        .bottom_wrapper .send_message .text {
            font-size: 18px;
            font-weight: 300;
            display: inline-block;
            line-height: 48px;
        }

        .message_template {
            display: none;
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

<script type="text/javascript">

        var Message;
        Message = function (arg) {
            this.text = arg.text, this.message_side = arg.message_side;
            this.draw = function (_this) {
                return function () {
                    var $message;
                    $message = $($('.message_template').clone().html());
                    $message.addClass(_this.message_side).find('.text').html(_this.text);
                    $('.messages').append($message);
                    return setTimeout(function () {
                        return $message.addClass('appeared');
                    }, 0);
                };
            }(this);
            return this;
        };
        $(function () {
            var getMessageText, message_side, sendMessage;
            message_side = 'right';
            getMessageText = function () {
                var $message_input;
                $message_input = $('.message_input');
                return $message_input.val();
            };
            sendMessage = function (text) {
                var $messages, message;
                if (text.trim() === '') {
                    return;
                }
                $('.message_input').val('');
                $messages = $('.messages');
                message_side = message_side === 'left' ? 'right' : 'left';
                message = new Message({
                    text: text,
                    message_side: message_side
                });
                message.draw();
                return $messages.animate({ scrollTop: $messages.prop('scrollHeight') }, 300);
            };

            try{
                var client = io.connect('http://127.0.0.1:3000');
                client.on('connect',function (data) {
                    //client.emit('subscribeTo', { channel: 'my_first_channel' });
                });

                $('.send_message').click(function (e) {
                e.preventDefault();

                        $.ajax({
                            type: "POST",
                            url: window.location+'main/match',
                            data: {message: getMessageText()},
                            success: function( res ) {
                                if (res != "")
                                    client.emit('reply', res);
                            }
                        });

                    client.emit('chat message', getMessageText());
                    });
                $('.message_input').keypress(function (e) {
                    if (e.which === 13) {

                        $.ajax({
                            type: "POST",
                            url: window.location + 'main/match',
                            data: {message: getMessageText()},
                            success: function (res) {
                                if (res != "")
                                    client.emit('reply', res);
                            }
                        });

                        client.emit('chat message', getMessageText());
                    }
                });



                    client.on('chat message', function(msg){
                       sendMessage(msg);
                    });

                    client.on('reply', function (msg) {
                        sendMessage(msg);
                    });
                } catch(e){
                    console.log('Socket ERROR\n');
                    console.log(e);
                }




        });



</script>


</body>
</html>
