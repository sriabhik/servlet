/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.practice;
import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.util.*;

public class MyServlet extends HttpServlet{
    public void doGet(HttpServletRequest request,HttpServletResponse response) throws ServletException,IOException{
        System.out.println("This is Get method....");
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("<h1>this is get method of servlet</h1>");
    }
}
