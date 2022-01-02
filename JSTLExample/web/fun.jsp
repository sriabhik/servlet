<%-- 
    Document   : fun
    Created on : Jan 2, 2022, 7:44:44 PM
    Author     : HP
--%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix ="c" %>
<%@taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix ="q" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fun Page</title>
    </head>
    <body>
        <h1>fun page</h1>
        <p>this page is all about writing functions tags</p>
        <c:set var ="name" value="ABHISHEK SRIVASTAVA"></c:set>
        <c:out value = "${name}"></c:out>
        <h1>Length of name is :<c:out value = "${q:length(name)}"></c:out></h1>
        <c:out value = "${q:toLowerCase(name)}"></c:out>
    </body>
</html>
