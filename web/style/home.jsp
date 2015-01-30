<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<html>
<head>
      
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           
        <c:import url="header.jsp">
            <c:param name="title" value="MathSpeech's HomePage"></c:param>
        </c:import>
        
        
        
        

        <style type="text/css">
            body {
		background-color:  #FFFFCC;
            }
			
            h1 {
		color: rgb(0,0,255); 
		text-align: center;
		margin-left: 20px;
            }
		
            p {
                font-family: "Times New Roman";
		font-size: 20px;
                text-align: justify;
		color: black;
		text-indent: 50px; <%--to specify the indentation of the first line of a text--%>
            }
			
           
			
            <%--The text-decoration property is mostly used to remove underlines from links --%>
            a {
		text-decoration: none;
            }
                        
                       
            div.img {
                height: auto;
                width: auto;
                float: left;
                text-align: center;
            }
            
            div.desc {
                text-align: center;
                font-weight: normal;
                width: 120px;
                margin: 5px;
            }
            
            #footer {
                width:100%;
                height:80px;
                position:fixed;
                bottom:0;
                left:0;
                background:#ee5;
                text-align: center;
            }
        </style>
	
</head>


<body>
 
    
    <div class="img">
        <div.desc class="desc"><h1><b><i>Maths Voice Recogniser</i></b></h1></div.desc>
        <img src="../images/maths_web_speech.png" width="1330" height="300" alt="maths_web_speech"/>
    </div>
    </br></br>
    <div id="wrapper">
            <div id="footer"></div>
    </div>
    
    </br></br></br></br></br></br></br></br></br>
    
    <form method="POST" action="../navigation">
		<!--<ul>  
			<li><a href="home.jsp">Home</a></li></br>
			<li><a href="about.jsp">About</a></li></br>
			<li><a href="contact.jsp">Contact</a></li></br>
			<li><a href="help.jsp">Help</a></li></br> 
                        <li><a href="index.jsp">Login</a></li></br> 
                        <li><a href="reg.jsp">Register</a></li></br> 
		</ul>  -->
                
                <select name="action">
                    <option value="about">About</option>
                    <option value="contact">Contact</option>
                    <option value="help">Help</option>
                    <option value="index">Login</option>
                    <option value="reg">Register</option>
                </select>
              
             
                  <input type="submit" value="Go!"/>
    </form>
	<hr/>
        
	
   <h1 align="center">Speech to Text Conversion</h1><br/>
 
  
   <p align="center">Speech to text conversion is the process of converting spoken words into written texts. This
   process is also often called speech recognition. Although these terms are almost synonymous.Speech
   recognition is sometimes used to describe the wider process of extracting meaning from speech, i.e. 
   speech understanding.</p>
   
   
   <hr/>
   
   <h1 align="center">How does it work?</h1><br/>
   
   <p align="center">All speech-to-text systems rely on at least two models: an acoustic model and a language model.
   It is important to understand that there is no such thing as a universal speech recognizer.Like any
   other pattern recognition technology, speech recognition cannot be error free. The speech transcript
   accuracy is highly depen
   dent on the speaker, the style of speech and the environmental conditions. 
   Speech recognition is a harder process than what people commonly think, even for a human being.Humans are used to
   understanding speech,not to transcribing it, and only speech that is well formulated can be transcribed without ambiguity.</p>

   <hr/>
   
   <h1 align="center">MathSpeech</h1><br/>
   <p align="center">MathSpeech is a web application ,which is basically developed to amplify people's convenience.
   Through MathSpeech users have just to sign up,if they haven't an account yet and after that they are transferred to 
   the main  menu of application. After, they have to give permission to the application in order to use microphon and
   they start telling 
   mathematical expressions,like integrals,differentials and other expressions which is very difficult and mainly boring
   to be written on hand.Afterward,our web application  which is connected with a database ,loads the expressions from 
   the database,makes the authentication and presents them in our screen. </p>   
   </br></br></br></br></br></br>
  

</body>

</html>


