<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%-- 
    Document   : help
    Created on : 10 ??? 2014, 4:25:53 ??
    Author     : Evi
--%>





<html>

<head>
        <c:import url="header.jsp">
            <c:param name="title" value="Help"></c:param>
        </c:import>
<style type="text/css">
	body
	{
		background: white url(images/web.GIF) center center fixed no-repeat;
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

</br> </br>

<body>
    <div id="wrapper">
            <div id="footer"></div>
    </div>
    <center>
     
    <p><b><a href="<c:url value="https://www.youtube.com/watch?v=qRolXPWqCSo" />">Video indicatives the use of web application</a></b></p>
   
	</br> </br>

    <h2 style="text-align:center">
        <c:set var="string1" value="EXPLANATION OF SYMBOLS."/>
        <c:set var="string2" value="${fn:toUpperCase(string1)}" />
        <u>${string2}</u></br>
    </h2>
      
    <h3>This page will be available soon!</h3>
     
    <c:import url="footer.jsp"></c:import>

    </center>
</body>

</html>


