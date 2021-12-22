/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.servletss;

import java.util.*;
import java.io.*;
import javax.servlet.*;
public class FirstServlets implements Servlet{
    ServletConfig conf;
    
    public void init(ServletConfig conf){
        this.conf = conf;
        System.out.println("creating Objects...");
    }
    public void service(ServletRequest req,ServletResponse resp) throws ServletException,IOException{
        System.out.println("Servicing...");
        
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        out.println("<h1> Abhishek </h1>");
        out.println("<h1> Srivastava </h1>");
        out.println("<h1>Date and TIme :  "+new Date().toString()+"</h1>");
    }
    public void destroy(){
        System.out.println("Destroy...");
    }
    
    //non lifre cycle
    public ServletConfig getServletConfig(){
            return this.conf;
    }
    public String getServletInfo(){
        return "created by Abhishek";
    }
}
