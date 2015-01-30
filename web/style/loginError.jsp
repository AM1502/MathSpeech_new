<%-- 
    Document   : error.jsp
    Created on : 6 ??? 2014, 1:09:19 ??
    Author     : Evi
--%>

<%@ page isErrorPage="true"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/register.css">
    <c:import url="header.jsp">
            <c:param name="title" value="LoginError"></c:param>
    </c:import>
</head>    
<body background="images/images.jpg">  
    <div id ="MathSpeech">
           <FONT COLOR="#FFFFFF">
                <h1><a href="index.jsp">MathSpeech</a></h1>
           </FONT>
       </div>
<div id="invalidLogin">
<h3><center>Invalid password or username. <a href="style/index.jsp">Try again</a>.</center></h3>
</div>

</body>
</html>

<!--How do I create a JSP error page to handle particular error codes? !-->
