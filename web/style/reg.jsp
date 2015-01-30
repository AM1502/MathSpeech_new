<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<%-- 
    Document   : reg
    Created on : 6 Δεκ 2014, 7:06:21 μμ
    Author     : Evi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <c:import url="header.jsp">
            <c:param name="title" value="Registration Page"></c:param>
        </c:import>
        <style type="text/css">
           body{
		
                background-color: #FFFFCC;
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
         
    </head>
    
    <body>
        
        <div id="homePage">
            <a href="home.jsp">Go back to Home page</a>.
        </div>
        
         <div id="wrapper">
            <div id="footer"></div>
         </div>
        
        <form method="POST" action="../register">
            </br></br>
            <center>
            <FONT COLOR="#000000 ">
            <table border="5" width="40%" cellpadding="12">
                <thead>
                    <tr>
                        <th colspan="2"><h2>Please create a new account</h2></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><h3>FirstName</h3></td>
                        <td><center><input type="text" name="fname" value="" required/></center></td>
                    </tr>
                    <tr>
                        <td><h3>LastName</h3></td>
                        <td><center><input type="text" name="lname" value="" required/></center></td>
                    </tr>
                    <tr>
                        <td><h3>Email</h3></td>
                        <td><center><input type="email" name="email" value="" required/></center></td>
                    </tr>
                    <tr>
                        <td><h3>UserName</h3></td>
                        <td><center><input type="text" name="uname" value="" required/></center></td>
                    </tr>
                    <tr>
                        <td><h3>Password</h3></td>
                        <td><center><input type="password" name="pass" value="" required/></center></td>
                    </tr>
                    <tr>
                        <td><center><input type="submit" value="Submit" /></center></td>
                        <td><center><input type="reset" value="Reset" /></center></td>
                    </tr>
                     <tr>
                        <td colspan="2"><center>If you have an account: <a href="index.jsp">Login Here</a></center></td>
                    </tr>
                </tbody>
            </table>
                
                </br></br>                </br></br>
                </br></br>
                
                <c:import url="footer.jsp"></c:import>
                
            </center>
        </form>
    </body>
</html>

