<%-- 
    Document   : communities
    Created on : Oct 27, 2019, 11:02:28 AM
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
            <img id="logo" alt="vKinek logo" src="img/vKinek-logo.png">
            <span id="motto">where virtual meetups lead to improved skills and real connections</span>
            <div class="button2">Hey user<img id="heydownarrow" alt="down arrow" src="img/arrow-down-sign-to-navigate.png" width="15"></div>
            <a href="profile.jsp">
                <img id="profilepic" alt="profile picture of user" src="img/user.png" height="50">
            </a>
        </header>
        <br><br><br>
        <hr>
        <div id="realbody">
        Communities:
        <div id="searchcommunities">
            All Communities <img alt="down arrow" src="img/arrow-down-sign-to-navigate.png" height="10">
            <img id="magnifyingglass" alt="magnigying glass" src="img/loupe.png" height="15">
        </div>
        <table>
            <tr style="width: 900px; height: 144px">
                <td style="text-align: center; width: 240px">
                    <a href="personalfinance.jsp">
                        <img src="img/Personal_Finance.PNG" alt="banking" style="height:155px;
                             width: 140px">
                    </a>
                </td>
                <td style="text-align: center; width: 240px">
                    <a href="nonmember.html">
                        <img src="img/Physics.png" alt="physics">
                    </a>
                </td>
                <td style="text-align: center; width: 240px">
                    <a href="biology.jsp">
                        <img src="img/Biology.PNG" alt="physics" style="height:155px;
                             width: 140px">
                    </a>
                </td>
                 <td style="text-align: center; width: 240px">
                    <a href="datascience.jsp">
                        <img src="img/Data_Science.PNG" alt="physics" style="height:155px;
                             width: 140px">
                    </a>
                </td>
            </tr>
        </table>
              
        </div>
        <footer>
            <br>
            <div id="social">
                <img alt="Youtube logo" src="img/yt-logo.png" height="35" width="40" id="yt"><span id="yttext">@vKinek</span><br>
                <img alt="Instagram logo" src="img/IG_Glyph_Fill.jpg" height="50" id="ig"><span id="igtext">@vKinek</span><br>
                <img alt="Twitter logo" src="img/Twitter_Social_Icon_Rounded_Square_Color.jpg" height="35" id="twtr"><span id="twtrtext">@vKinek</span><br>
            </div>
            <div id="sitelinks">
                Sitemap<br>
                Homepage<br>
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