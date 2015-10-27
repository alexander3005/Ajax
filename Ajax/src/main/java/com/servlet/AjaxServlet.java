package com.servlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AjaxServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request,HttpServletResponse response) throws IOException {


        String userName=request.getParameter("userName");

       if(userName.equals("")){
           userName="Please Enter UserName";

       }
        else{
           userName="Hello "+userName;
       }

        response.setContentType("text/html");
       response.getWriter().write(userName);
    }
}