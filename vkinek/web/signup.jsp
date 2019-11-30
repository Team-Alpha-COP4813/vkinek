<%-- 
    Document   : signup
    Created on : Oct 29, 2019, 4:53:05 PM
    Author     : Adam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/stylesheet.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Signup Page</title>
        
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
                <input type="text" name="first" value="" required="required" pattern="[a-zA-Z]+"
                       title="First name is required">
                <br>
                <br>
                Last Name:
                <input type="text" name="last" value="" required="required" pattern="[a-zA-Z0-9]+"
                       title="Last name is required">
                <br>
                <br>
                Username:
                <input type="text" name="user" value="" required="required" pattern="[a-zA-Z0-9]+"
                       title="Username is required">
                <br>
                <br>
                Password:
                <input type="password" name="pass" value="" required="required" id="password" pattern="[a-zA-Z0-9]+"
                       title="Password is required">
                <br>
                <br>
                Confirm Password:
                <input type="password" name="pass2" value="" required="required" id="password_confirm" oninput="check(this)" pattern="[a-zA-Z0-9]+"
                       title="Password is required">
                <br>
                <br>
                <script language='javascript' type='text/javascript'>
    function check(input) {
        if (input.value !== document.getElementById('password').value) {
            input.setCustomValidity('Passwords must match.');
        } else {
            // input is valid -- reset the error message
            input.setCustomValidity('');
        }
    }
</script>
                Email:
                <input type="email" name="email" value="" required="required" 
                       title="Valid email is required. Proper format is also required.">
                <br>
                <br>
                <input type="submit" name="submitButton" value="Signup">
            </form>
            </div>
        </div>
       <table>
            <tr>
                <td id="left">
                    <img src="img/instagram.jpg" alt='Instagram'
                         style='width: 30px; height: 30px'>
                    <strong>Instagram</strong> 
                
                    <br style="line-height: 30px">
                    <img src="img/youtube.jpg" alt='Youtube'
                         style='width: 30px; height: 30px'>
                    <strong>Youtube</strong>
                
                    <br style="line-height: 30px">
                    <img src="img/twitter.jpg" alt='Twitter'
                         style='width: 30px; height: 30px'>
                    <strong>Twitter</strong>
                </td>
                <td id="lmiddle">
                   
                    @vKinek
                    <br>
                    <br>
                    @vKinek
                    <br>
                    <br>
                    @vKinek
                   
                </td>
            
                <td id="rmiddle">
                    <a href="sitemap.jsp" style="color: white;
                       text-decoration: none">Sitemap</a>
                    <br style="line-height: 20px">
                    <a href="index.jsp"  style="color: white;
                       text-decoration: none">Homepage</a>
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
