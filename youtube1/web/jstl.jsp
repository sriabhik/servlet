<%-- 
    Document   : jstl
    Created on : Dec 24, 2021, 10:44:47 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage = "error_page.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <c:set var = "name" value = "Abhishek"></c:set>
        <c:out value = "${name}"></c:out>
        <c:out value = "${50+60}"></c:out>

        <%!
            int a = 20;
            int b = 30;
        %>

        <%
            int div = a/0;
            
        %>
        <%= "\n\nDivision Result  " + div %>
    </body>
</html>
