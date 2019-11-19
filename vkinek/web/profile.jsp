<%-- 
    Document   : profile
    Created on : Oct 29, 2019, 4:53:33 PM
    Author     : Adam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/stylesheet.css">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="head">
            <div class="name">
               <a href="index2.jsp" style="color: black;
                  text-decoration: none">VKinek</a>
            </div>
            <div class="greeting">Where virtual meetups lead to improved 
                skills and real connections
            </div>
        </div>
        <div class="menu">
            <ul>
                <li><a href="index2.jsp">HOME</a></li>
                <li><a href="communities.jsp">BROWSE</a></li>
                <li><a href="communities2.jsp">MY COMMUNITIES</a></li>
                <li><a href="communities.jsp">SEARCH</a></li>
            </ul>
        </div>
        <div class="info">
            <img src="profile_pic.jpg" alt="Profile Picture"
                style="width: 90px; height: 90px">
            <br>
            <br>
            Name: 
            <br>
            <br>
            Location: 
            <br>
            <br>
            Gender: 
            <br>
            <br>
        </div>
        <div class="message">
            Contact
            <br style="line-height: 30px">
            <a class="link" href="message.jsp">Send Message</a>
            <br>
            <a class="link" href="vmessage.jsp">Send Video Message</a>
            <br>
            <a class="link" href="vcall.jsp">Video Call</a>
        </div>
        <div class="video">
            Videos
        </div>
        <div class="communities">
            Communities
        </div>
        <table>
            <tr>
                <td id="left">
                    <img src="instagram.jpg" alt='Instagram'
                         style='width: 30px; height: 30px'>
                    <strong>Instagram</strong> 
                
                    <br style="line-height: 30px">
                    <img src="youtube.jpg" alt='Youtube'
                         style='width: 30px; height: 30px'>
                    <strong>Youtube</strong>
                
                    <br style="line-height: 30px">
                    <img src="twitter.jpg" alt='Twitter'
                         style='width: 30px; height: 30px'>
                    <strong>Twitter</strong>
                </td>
                <td id="lmiddle">
                   
                    @vKinek
                    <br style="line-height: 30px">
                    @vKinek
                    <br style="line-height: 50px">
                    @vKinek
                   
                </td>
            
                <td id="rmiddle">
                     <a href="sitemap.jsp" style="color: white;
                       text-decoration: none">Sitemap</a>
                    <br style="line-height: 20px">
                    Homepage
                     <br style="line-height: 20px">
                    About Us
                    <br style="line-height: 20px">
                    Contact Us
                    <br style="line-height: 20px">
                    Privacy Policy
                    <br style="line-height: 20px">
                    Terms of Service
                    <br style="line-height: 20px">
                    
                </td>
                <td>
                    vKinek Inc.
                    <br style="line-height: 30px">
                    200 Alpha Drive
                    <br style="line-height: 30px">
                    Tallahassee, FL
                </td>
            </tr>
        </table>
    </body>
</html>
