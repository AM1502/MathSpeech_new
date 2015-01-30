<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<%-- 
    Document   : contact
    Created on : 10 ??? 2014, 4:22:43 ??
    Author     : Evi
--%>

<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
<head>
	<c:import url="header.jsp">
            <c:param name="title" value="Contact us"></c:param>
        </c:import>
        
    <%
     if ((session.getAttribute("Username") == null) || (session.getAttribute("Username") == "")) {
        response.sendRedirect("index.jsp");
    }
    %>
    
        <style type="text/css">
            body {
		background-color: #FFFFCC;
            }
                        
            div.img {
                margin: 5px;
                padding: 5px;
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
                height:100px;
                position:fixed;
                bottom:0;
                left:0;
                background:#ee5;
            }
        </style>

</head>

<body>
    <div class="img">
        <div.desc class="desc"><h1><b><i>Contact Form</i></b></h1></div.desc>
        <img src="../images/talk_to_us_1.jpg" width="1325" height="300" alt="talk_to_us"/>
    </div>
    
    <div id="wrapper">
            <div id="footer"></div>
    </div>
    <form action="" method="post">
        <div align="center">
        <h1>Please fill all the texts in the fields</h1></br></br>
    </br>
    
    <label>
        <span><h3>Your Name : </span>
        <input id="name" type="text" name="name" placeholder="Your Full Name" /></h3>
    </label>
	
    </br></br></br>
    
    <label>
        <span><h3>Your Email :  </span>
        <input id="email" type="email" name="email" placeholder="Valid Email Address" /></textarea></h3>
    </label>
	
    </br></br>
	
    <label>
        <center><span><h3>Message :  </span></center>
        <textarea  name="input" cols="40" rows="10" ></textarea><br>
        <input name="commentSubmit" type="button" value="Add Comment"
    </label> 
	
    </br></br></br>
	
     <label>
         
        <span><h3>Subject :  </span><select name="selection"></h3>
        <c:set var="string" scope="session" value="speak with colleague"/>
        <c:choose>
            <c:when test="${Selection == 'speak with colleague'}">
              Speak with colleague.
            </c:when>
            <c:when test="${Selection == 'General Question'}">
                General Question.
            </c:when>
            <c:otherwise>
                Other.
            </c:otherwise>
        </c:choose>
        
        
        </select>
    </label>  

    <c:set var="email" scope="session" value="parpanag@inf.uth.gr" />
    <h3>Send me personal email at : <c:out value="${email}"/></h3>
    
   
    
    </br></br></br>
	
     <label>
        <span>&nbsp;</span> 
        <input type="button" class="button" value="Send message" /> 
    </label>    
    
    
          

    
    </br> </br> </br</br></br>
    <c:import url="footer.jsp"></c:import>      
    
</form>
</body>



</html>

