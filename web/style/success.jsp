<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page isErrorPage="true" %>

<%-- 
    Document   : success
    Created on : 6 ??? 2014, 7:09:57 ??
    Author     : Evi
--%>
<html>
    <head>
        <c:import url="header.jsp">
            <c:param name="title" value="Logged in"></c:param>
        </c:import>
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
        <form method="POST" action="../logout">
        <div id="wrapper">
            <div id="footer"></div>
	</div>
        <center>
            <%
                    if ((session.getAttribute("Username") == null) || (session.getAttribute("Username") == "")) {
                %>
                        You are not logged in yet<br/>
                        You caused a ${pageContext.exception} on the server.</br>
                        <a href="index.jsp">Please login</a>
                        

                <%} 
                    else {
                        //uses the request object to retrieve and display the value of the username parameter from the HTTP request:
                %>
                        <h2>Welcome <%=session.getAttribute("Username")%></h2>
                        
                        <%= request.getParameter("Username")%>
                        
                        <sql:setDataSource var="ds" dataSource="jdbc/mathcollection" />
                       
                        <sql:query dataSource="${ds}" sql="select * from users_info  Username" var="result">
                        </sql:query>
                       
                        <table border="1" width="50%">
                            <tr
                               <th>Username</th>
                               <th>Email</th>
                            </tr>
                            
                            <c:set var="tablewidth" value="4" />
                          <%-- <sql:param value="${tablewidth}" />--%>
                                   
                            <c:forEach var="row" items="${result.rows}">
                                <c:if test="${row.index % tablewidth == 0}">
                                <!-- row.index is gonna be the index of the image within the sequence, here I test if the index of the image is divisible by eight -->
                                <tr>
                                </c:if>
                                <tr>
                                   <td><c:out value="${row.Email}"/></td>
                                   <td><c:out value="${row.Username}"/></td>
                                </tr>
                            </c:forEach>
                        </table>
                <%
                }
                %>
           <h2> <a href="speechRecognition.jsp">Speak maths here and let our web application to write down them for you!</a></h2>
           <h2> <a href="contact.jsp">Contact us</a></h2>
        </center>


        </br></br></br></br>
        
      
       </form>

        <center>
            <c:import url="footer.jsp"></c:import>
        </center>
        </form>
    </body>
</html>