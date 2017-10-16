package com.ajax.example.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/test.do")
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
}
