<%-- 
    Document   : show_users
    Created on : Jan 2, 2022, 9:22:55 PM
    Author     : HP
--%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix ="c" %>
<%@taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix ="q" %>
<%@taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix ="sql" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>All user Are!! </h1>
        <sql:setDataSource driver="com.mysql.jdbc.Driver" url = "jdbc:mysql://localhost:3306/youtube" user="root" password="Abhi7631@@" var="ds"></sql:setDataSource>
        <sql:query dataSource = "${ds}" var = "rs">select * from user;</sql:query>
        <table>
            <tr>
                <td>User_ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                
                <td>User_Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                <td>User_Email</td>
            </tr>
            <c:forEach items = "${rs.rows}" var = "row">
                <tr>
                    <td><c:out value = "${row.id}"></c:out></td>
                    <td><c:out value = "${row.name}"></c:out></td>
                    <td><c:out value = "${row.email}"></c:out></td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
