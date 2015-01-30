<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <link href="css/index.css" type="text/css" rel="stylesheet"/>
        <style type="text/css">
            body{
		
                background-color: #FFFFCC;
            }
            
           table {
               width: 40%;
           }

           th {
               height: 50px;
           }
           td {
              text-align: center;
           }
           table, td, th {
               border: 5px solid black;
           }

           th {
               //background-color: #FFF5EE;
               color: black;
           }
           p {

               font-family: "Times New Roman";
               font-size: 20px;
               color: black;
               text-align: center;
               text-indent: 50px; <%--to specify the indentation of the first line of a text--%>
            }
             #footer {
                width:100%;
                height:80px;
                position:fixed;
                bottom:0;
                left:0;
                background:#ee5;
            }
         </style>
        <jsp:include page="header.jsp">
            <jsp:param name="title" value="Login Page"/>
        </jsp:include>
    </head>
    
    <body>
        
        <div id="wrapper">
            <div id="footer"></div>
        </div>
        <h2>Please login with your username and password</h2>
            
        </br></br>
        
        <div class="container">
            <h2>Vertical  form</h2>
            <form method="POST" action="../login">
            <center>
            <%--define an array with table tag, the thead tag is used to group
                header content , tr tag defines a row, the colspan attribute 
                defines the number of columns a cell should span--%>
            <table border="1" width="35%" cellpadding="10">
                <thead>
                    <tr>
                        <th colspan="2"><h2>Login Here</h2></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><h3>Username</h3></td>
                        <td><input type="text" name="Username" value=""  required=""/></td>
                    </tr>
                    <tr>
                        <td><h3>Password</h3></td>
                        < <td><input type="password" name="Password" value=""  required=""/></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Yet Not Registered!! <a href="reg.jsp">Register Here</a></td>
                    </tr>
                </tbody>
            </table>
            </br></br>
            <center>
              <c:import url="footer.jsp"></c:import>
            </center>
        </form>
        </div>

            <center>
              <c:import url="footer.jsp"></c:import>
            </center>
        </form>
    </body>
</html>

  