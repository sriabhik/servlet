<%-- 
    Document   : dir
    Created on : Dec 24, 2021, 10:04:21 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.util.Random" %>
<%@include file ="index.html" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Learning Directive</title>
    </head>
    <body>
        <%
            Random r = new Random();
            int n = r.nextInt(10000);
            out.print(n);
        %>

    </body>
</html>
