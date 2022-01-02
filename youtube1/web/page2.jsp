<%-- 
    Document   : page2
    Created on : Dec 25, 2021, 12:56:52 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Page2</title>
    </head>
    <body>
        <h1>Page2</h1>
        <%
            response.sendRedirect("https://www.irctc.co.in/nget/train-search");
        %>
    </body>
</html>
