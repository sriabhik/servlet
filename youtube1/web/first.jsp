<%-- 
    Document   : first
    Created on : Dec 24, 2021, 8:50:11 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Learning jsp start</title>
    </head>
    <body>
        <h1>Hello World!</h1>

        <%!
            //using java in jsp
            int a = 50;
            int b = 60;
            String name = "Abhishek Kumar";

            public int doSum() {
                return a + b;
            }

            public String Reverse() {
                StringBuffer sb = new StringBuffer(name);
                return sb.reverse().toString();
            }
        %>

        <%
            out.print(a+" ");
            out.print(b+" \n");
            out.println("sum of a + b :: "+doSum());
            out.println("String : "+name+"\nReverse String :: "+Reverse());
            
            
        %>
        <h2>Sum is : <%= doSum()%></h2>
    </body>
</html>
