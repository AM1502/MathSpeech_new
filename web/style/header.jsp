<%-- 
    Document   : header
    Created on : 15 ??? 2015, 2:51:37 ??
    Author     : Evi
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <!--The param and paramValues objects give you access to the parameter values normally available through the request.getParameter and request.getParameterValues methods.-->
        <!--<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />--> <!-- we dont have to worry about the server we upload our app -->
        <title>${param.title}</title> <!-- this we get it from <c:param name="title" value="Picture Squirrel Home"></c:param> in home.jsp -->
        
    </head>

<body>

    <strong>
        ${param.Address}
    </strong>
<div class="content">
