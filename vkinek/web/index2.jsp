<%-- 
    Document   : index
    Created on : Oct 27, 2019, 11:04:01 AM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>vKinek Homepage</title>
        <link rel="stylesheet" type="text/css" href="css/styles.css">
    </head>
    <body>
        <header>
            <a href="index2.jsp"><img id="logo" alt="vKinek logo" src="img/vKinek-logo.png"></a>
            <span id="motto">where virtual meetups lead to improved skills and real connections</span>
            <div class="button2">Hey user<img id="heydownarrow" alt="down arrow" src="img/arrow-down-sign-to-navigate.png" width="15"></div>
            <a href="profile.jsp">
                <img id="profilepic" alt="profile picture of user" src="img/user.png" height="50">
            </a>
        </header>
        <br><br><br>
        <hr>
        <div id="realbody">
        Your Communities:
        <a href="personalfinance.jsp">
        <div id="memcomm">
            <div id="lmemcomm">
                <img id="logo2" src="img/bank.png" alt="bank" width="300px">
            </div>
            <div id="information">
                <p>
                    Personal Finance<br>
                    In this community, you will learn the fundamentals of<br>
                    personal finance and budgeting.<br>
                    Member Count: 213
                </p>
                
            </div>
        </div>
        </a>
        <br>
        <a href="datascience.jsp">
        <div id="memcomm">
            <div id="lmemcomm">
                <img id="logo2" src="img/data.png" alt="brain">
            </div>
            <div id="information">
                <p>
                    Data Science<br>
                    In this community, you will learn the underlying processes<br>
                    using various scientific methods, algorithms, and technologies, 
                    including those pertaining to data mining and Big Data.<br>
                    Member Count: 115
                </p>
                
            </div>
        </div>
        </a>
        <br>
        <a href="biology.jsp">
        <div id="memcomm">
            <div id="lmemcomm">
                <img id="logo2" src="img/dna.png" alt="brain">
            </div>
            <div id="information">
                <p>
                    Biology<br>
                    In this community, you will learn the basics of<br>
                    biology and biological processes, including photosynthesis,
                    meiosis and mitosis, and DNA construction.<br>
                    Member Count: 213
                </p>
             
            </div>
        </div>
        </a>
        <br>
        <footer>
            <br>
            <div id="social">
                <img alt="Youtube logo" src="img/yt-logo.png" height="35" width="40" id="yt"><span id="yttext">@vKinek</span><br>
                <img alt="Instagram logo" src="img/IG_Glyph_Fill.jpg" height="50" id="ig"><span id="igtext">@vKinek</span><br>
                <img alt="Twitter logo" src="img/Twitter_Social_Icon_Rounded_Square_Color.jpg" height="35" id="twtr"><span id="twtrtext">@vKinek</span><br>
            </div>
            <div id="sitelinks">
                <a href="sitemap.jsp">Sitemap</a><br>
                <a href="index.jsp">Homepage</a><br>
                About Us<br>
                Contact Us<br>
                Privacy Policy<br>
                Terms of Service<br>
            </div>
            
            <div id="contactinfo">
                vKinek Inc.<br>
                200 Alpha Dr.<br>
                Panama City, FL<br>
            </div>
        </footer>
    </body>
</html>
