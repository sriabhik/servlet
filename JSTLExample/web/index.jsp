<%-- 
    Document   : index
    Created on : Dec 25, 2021, 9:20:53 PM
    Author     : HP
--%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix ="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSTL example</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <!--out tag-->
        <!--alternative for expression-->

        <!--set tag-->
        <c:set var="i" value = "23" scope = "application"></c:set>
        <h1><c:out value = "${i}"></c:out></h1>

            <!--remove tag-->
        <%--<c:remove var = "i"></c:remove>--%>
        <h1><c:out value = "${i}">cant't print i as it remove one line above</c:out></h1>

            <!--if tag-->
        <c:if test="${i == 23}">
            <h1>Yes ,I Value is 23</h1>
        </c:if>

        <!--choose when line switch case-->
        <c:choose>
            <c:when test="${i > 0}">
                <h1>Positive</h1>
            </c:when>

            <c:when test="${i < 0}">
                <h1>Negative</h1>
            </c:when>  

            <c:otherwise>Zero</c:otherwise>
        </c:choose>

        <!--for each tag-->
        <c:forEach var="j" begin="1" end = "10">
            <h1>value of j is : <c:out value = "${j}"></c:out></h1>
        </c:forEach> 

        <!--redirect tag-->
        <%--<c:redirect url = "https://virtusacoetraining.examly.io/mycourses"></c:redirect>--%>

        <!--url ,parama-->
        
        <c:url var ="myurl" value = "https://www.google.com/search">
            <c:param name = "q" value="Abhishek"></c:param>
        </c:url> 
        
        <h1><c:out value = "${myurl}"></c:out></h1>
        <%--<c:redirect url = "https://www.google.com/search"></c:redirect>--%>
    </body>
</html>
