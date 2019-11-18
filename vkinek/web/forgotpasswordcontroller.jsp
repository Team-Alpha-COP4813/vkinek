

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*" %>

<%-- 
    Document   : forgotpassword
    Created on : Nov 17, 2019, 4:58:55 PM
    Author     : pure_
--%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forgot Password</title>
    </head>
    <body>
    <% String username = request.getParameter("username"); %>
    <%String address = request.getParameter("ResetPW"); %>
    
    
               

             <%  if(username.equals("testuser") && request.getParameter("ResetPW") != null) {%>

               <%  address = "passwordreset.jsp" ; %>
                  <% RequestDispatcher dispatcher = request.getRequestDispatcher(address);%>
          <% dispatcher.forward(request,response); %>

               <br> 


          <%}else {%>
          <h1> <% out.print( "Please enter a valid username"); } %></h1>
          <a  href="forgotpassword.html">Retry Login</a><br>
          
          
          
    </body>
</html>
