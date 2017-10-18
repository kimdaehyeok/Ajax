package com.ajax.example.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ajaxReceive.do")
public class AjaxResponse extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
       String targetId = request.getParameter("userId");
       
       if(!targetId.equals(""))
       {
           response.setContentType("html/text");
           response.setHeader("Cache-Control","no-cache");
           response.getWriter().append("Server Response : " + targetId );
       }
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        System.out.println("post");
        
        String userIdPost = request.getParameter("userIdPost");
        String userPasswordPost = request.getParameter("userPasswordPost");
        
        response.setContentType("html/text");
        response.setHeader("Cache-Control","no-cache");
        response.getWriter().append("Server Response Post Method : " + userIdPost + " " + userPasswordPost );
    }
}
