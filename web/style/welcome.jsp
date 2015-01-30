<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<%-- 
    Document   : welcome2
    Created on : 6 ??? 2014, 7:08:16 ??
    Author     : Evi
--%>

<html>
    <head>
        
        <c:import url="header.jsp">
            <c:param name="title" value="Welcome Page"></c:param>
        </c:import>
        
        <%
        if ((session.getAttribute("Username") == null) || (session.getAttribute("Username") == "")) {
           response.sendRedirect("index.jsp");
       }
       %>
       
        <style type="text/css">
            body{
		
                background-color: #FFFFCC;
            }
            #footer {
                width:100%;
                height:80px;
                position:absolute;
                bottom:0;
                left:0;
                background:#ee5;
            }
        </style>
    </head>
     
<body>   
    <div id="wrapper">
            <div id="footer"></div>
    </div>
    <center>
        <h2> <p align="center">Welcome to the MathSpeech</p> </h2> <br/>
        <p><h3>Congratulation ! Registration was successful.Now you can <a class="link_2" href="index.jsp"> log in. </a></h3></p>
        </br></br></br></br></br>
        <c:import url="footer.jsp"></c:import> 
    </center>>
         
</body>

</html>
    
    