<%-- 
    Document   : signup
    Created on : Oct 29, 2019, 4:53:05 PM
    Author     : Adam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="stylesheet.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <body>
        <div class="head">
            <div class="name">
                 <a href="index.jsp" style="color: black;
                  text-decoration: none">VKinek</a>
            </div>
            <div class="greeting">Where virtual meetups lead to improved 
                                             skills and real connections
            </div>
        </div>    
        <div class="contents">
            <div class="midleft" id="welcome">
                <strong>Welcome to VKinek</strong>
            </div>
            <div class="midleft" id="heading">
                <strong>
                     A virtual community that allows you to:
                </strong>
            </div>
            <div class="midleft" id="list">
                <ul>
                    <li>
                        Connect with others that share your interests.
                        <br>
                        <br>
                    </li>                    
                    <li>
                        Pick from a wide a range of topics to discuss.
                        <br>
                        <br>
                    </li>
                    <li>
                        Pose questions to boards that can be answered by experts
                        on your topics of interest.
                        <br>
                        <br>
                    </li>
                    <li>
                        Make your own community on a topic of field of your choice.
                        <br>
                        <br>
                    </li>
                    <li>
                        Setup video conferences with your classmates and work
                        associates.
                        <br>
                        <br>
                    </li>
                </ul>
            </div>
            <div class="midright" id="signup">
                Sign Up
            </div>
            <div class="midright" id="form">
            <form action="Controller" method="POST">
                First Name:
                <input type="text" name="first" value="">
                <br>
                <br>
                Last Name:
                <input type="text" name="last" value="">
                <br>
                <br>
                Username:
                <input type="text" name="user" value="">
                <br>
                <br>
                Password:
                <input type="text" name="pass" value="">
                <br>
                <br>
                Confirm Password:
                <input type="text" name="pass2" value="">
                <br>
                <br>
                Email:
                <input type="text" name="email" value="">
                <br>
                <br>
                <input type="submit" name="submitButton" value="Signup">
            </form>
            </div>
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