/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.practice;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.*;
import javax.servlet.http.*;

public class SuccessServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException{
        res.setContentType("text/html");
        PrintWriter out = res.getWriter();
        out.println("This is Success Servlet");
        out.println("<h2>Succesffully Register</h2>");
    }
    
}
