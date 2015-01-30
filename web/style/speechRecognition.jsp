
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        
         <c:import url="header.jsp">
            <c:param name="title" value="Speechrecognition"></c:param>
        </c:import>
    
    
<%
     if ((session.getAttribute("Username") == null) || (session.getAttribute("Username") == "")) {
        response.sendRedirect("index.jsp");
    }
%>
    <br><br><br>
    
     <h2>You are in the main menu of the MathSpeech!Let's experiment!!</h2>

        <style type="text/css">
          
            #controls {
                text-align: center;
            }
            #start_button {
                font-size: 16pt;
            }
            #transcript {
                color: darkred;
                font-size: 16pt;
                border: 1px solid #ccc;
                padding: 5px;
                text-align: center;
            }
            #instructions {
                color: darkblue;
                font-size: 14pt;
                text-align: center;
            }
            
        </style>
		
		<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		
    <script type="text/javascript" src="http://static.yac.mx/js/adoff.js"></script></head>
    
    
    <body>
        
         
                        
        <div id="transcript">&nbsp;</div>
        <br>
        <div id="instructions">&nbsp;</div>
        <div id="controls">
            <button id="start_button">Click to Start</button>
        </div>

        <script type="text/javascript">
            var finalTranscript = '';
            var recognizing = false;

            $(document).ready(function() {

                // check that your browser supports the API
                if (!('webkitSpeechRecognition' in window)) {
                    alert("Sorry, your Browser does not support the Speech API");

                } else {
                    // Create the recognition object and define the event handlers

                    var recognition = new webkitSpeechRecognition();
                    recognition.continuous = true;         // keep processing input until stopped
                    recognition.interimResults = true;     // show interim results
                    recognition.lang = 'en-GB';           // specify the language

                    recognition.onstart = function() {
                        recognizing = true;
                        $('#instructions').html('Speak slowly and clearly');
                        $('#start_button').html('Click to Stop');
                    };

                    recognition.onerror = function(event) {
                        console.log("There was a recognition error...");
                    };

                    recognition.onend = function() {
                        recognizing = false;
                        $('#instructions').html('&nbsp;');
                    };

                    recognition.onresult = function(event) {
                        var interimTranscript = '';
                        // Assemble the transcript from the array of results
                        for (var i = event.resultIndex; i < event.results.length; ++i) {
                            if (event.results[i].isFinal) {
                                finalTranscript += event.results[i][0].transcript;
								//me sunarthsh js na to kopseis kai na pareis tis lekseis kai na allazeis auta pou thes
                            } else {
								//console.log("event.results[i][0].transcript: " + event.results[i][0].transcript);
								//if (event.results[i][0].transcript == "equals") {
									//... = "=";
								//}
								//else if (... == "by") {
									//... = "*";
								//}
								//else if (... == "divide") {
									//... = "/";
							//}
								//else if (... == "square") {
									//... = "^2";
								//}
                                interimTranscript += event.results[i][0].transcript;
                            }
                        }
                        console.log("interim:  " + interimTranscript);
                        console.log("final:    " + finalTranscript);

                        // update the page
                        if(finalTranscript.length > 0) {
                            $('#transcript').html(finalTranscript);
                            recognition.stop();
                            $('#start_button').html('Click to Start Again');
                            recognizing = false;
                        }
                    };

                    $("#start_button").click(function(e) {
                        e.preventDefault();

                        if (recognizing) {
                            recognition.stop();
                            $('#start_button').html('Click to Start Again');
                            recognizing = false;
                        } else {
                            finalTranscript = '';
                            // Request access to the User's microphone and Start recognizing voice input
                            recognition.start();
                            $('#instructions').html('Allow the browser to use your Microphone');
                            $('#start_button').html('waiting');
                            $('#transcript').html('&nbsp;');
                        }
                    });
                }
            });
        </script>
        
     <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br> <br>
     
     <form class="form-signin" method="POST" action="../logout">  
     <center>
         <button class="btn btn-primary btn-lg" type="submit" value="Logout">Logout</button>         
     </center>     
     </form>
    
        
    </body>
</html>