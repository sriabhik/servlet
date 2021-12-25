<%-- 
    Document   : error_page
    Created on : Dec 25, 2021, 10:49:29 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage = "true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error Page</title>
        <style>
            *{
                padding:0px;
                margin:0px;
            }
        </style>
    </head>
    <body>
        <div style ="margin-top: 50px;color:black;background:grey;font-size:30px;text-align: center;">
            <h3>Sorry !!  Something Went Wrong..</h3>
            <p><%= exception %></p>

        </div>

    </body>
</html>
