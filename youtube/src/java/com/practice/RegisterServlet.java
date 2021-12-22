package com.practice;
import javax.servlet.*;
import java.util.*;
import java.io.*;
import javax.servlet.http.*;
import sun.security.util.Password;
public class RegisterServlet extends HttpServlet{
    public void doPost(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
         response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<h1>Welcome to Register Servlet</h1>");
        
        String name = request.getParameter("user_name");
        String password = request.getParameter("user_password");
        String email = request.getParameter("user_email");
        String gender = request.getParameter("user_gender");
        String course = request.getParameter("user_course");
        String cond = request.getParameter("condition");
        if(cond != null){
            if(cond.equals("checked")){
                out.println("<h2>Name : "+name + "</h2>");
                out.println("<h2>Password : "+password + "</h2>");
                out.println("<h2>Email: "+email+ "</h2>");
                out.println("<h2>Gender : "+gender + "</h2>");
                out.println("<h2>Course : "+course + "</h2>");  
                
                //jdbc
                
                //saved to db
                RequestDispatcher rd = request.getRequestDispatcher("success");
                rd.forward(request, response);
            }
        }
        else{
             out.println("<h2>You Did Not  accept the T&C</h2>");
             //i want to include output of index.html
             //get the object request
             RequestDispatcher rd = request.getRequestDispatcher("index.html");
             
             //inclde
             rd.include(request, response);
        }
       
    }
}
