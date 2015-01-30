<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%-- 
    Document   : print_all_users
    Created on : 15 ??? 2015, 4:29:09 ??
    Author     : Evi
--%>

<sql:setDataSource var="ds" dataSource="jdbc/mathcollection" />

        <sql:query dataSource="${ds}" sql="select * from users_info order by Username" var="results" />
       
        
        <table class="Users">

        <c:set var="tablewidth" value="4" /> <!-- 8 images in each row -->

        <c:forEach var="user" items="${results.rows}" varStatus="row">
 
                <c:set scope="page" var="usrname" value="${user.Username}"></c:set>
                <c:set scope="page" var="emailAddress" value="${user.Email}"></c:set>
                <tr>
                    <td>
                        <c:out value="${usrname}"></c:out>
                        <c:out value="${emailAddress}"></c:out>
                    </td>
                </tr>
                
                <td>
                    <a href="<c:url value="/navigation?action=user&user=${user.Username}"/>"><!-- if user clicks on the image go to gallery (Controller) with action=image -->
                        
                    </a>
                </td>
	
        </c:forEach>
         
                
