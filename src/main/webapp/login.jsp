<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">


 <!-- TITTLE -->
    <title>Expenditure Adviser</title>


    <!-- STYLE -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/login.css">

    <!-- FAVICON -->
    <link rel="apple-touch-icon" sizes="180x180" href="images/favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="images/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="images/favicon/favicon-16x16.png">
    <link rel="manifest" href="images/favicon/site.webmanifest">
    <link rel="mask-icon" href="images/favicon/safari-pinned-tab.svg" color="#5bbad5">
    <meta name="msapplication-TileColor" content="#da532c">
    <meta name="theme-color" content="#ffffff">
    
    
</head>
<body>
 <div class="top-banner">
        <div class="container">
            <div class="small-bold-text banner-text">Expenditure rises to meet Income.</div>
        </div>
    </div>
    <span id="logobar" class="uni-padding">
        <img src="images/LOGO.png" alt="" style="height:120px">
    </span>
    <span class="navbar" class="uni-padding">
        <a href="index.jsp">Home</a>
        <a href="about.jsp">About</a>
        <a href="">Services</a>
        <a href="team.jsp">Team</a>
        <a href="blog.jsp">Blog</a>
        <a href="contact.jsp">Contact</a>  
    </span>
    
    <div class="main">
        <p class="sign" align="center">Sign in</p>
        <form class="form1" action="loginpage" method="post">
          <input class="un " type="text" align="center" name="uname" placeholder="Username">
          <input class="pass" type="password" name="pass" align="center" placeholder="Password">
          <input type="submit" value="Sign In" class="submit" align="center">
          <p class="forgot" align="center"><a href="#">Forgot Password?</p>
                
                    
        </div>
    
        <!-- FOOTER -->
    <footer>
        <div id="imp-link" class="uni-padding">
            <div class="div33" style="padding-left: 0px;">
                <h3>About US</h3><br>
                <p style="text-align:justify",>Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ullam
                    corrupti
                    illo tenetur ea vitae
                    accusantium itaque nam laboriosam magni? Eaque quaerat explicabo magnam molestias, mollitia
                    perspiciatis consectetur accusantium quibusdam voluptas tempora quis aperiam, totam fuga
                    quas
                    cum maiores. Porro neque hic corporis ex. Eligendi hic corrupti magni nobis quam ad?</p>
            </div>
            <div class="div33" id="footer-menu-container">
                <h3>Important Link</h3><br>
                <ul class="footer-menu">
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="about.jsp">About</a></li>
                    <li><a href="">Services</a></li>
                    <li><a href="">Team</a></li>
                    <li><a href="">Portfolio</a></li>
                    <li><a href="">Testimonials</a></li>
                    <li><a href="">Donate</a></li>
                </ul>
            </div>
            <div class="div33">
                <h3>Contact US</h3><br>
                <p>Street: B 4, Opp Gyan Bharti School, Saket <br>
                    City: Delhi<br>
                    State/province/area: Delhi<br>
                    Phone number: 01126850097<br>
                    Zip code: 110017<br>
                    Country calling code: +91<br>
                    Country: India<br>
                </p>
            </div>
        </div>
        <div id="copyright">
            <p id="copypath">copyright© teggun 2021-22</p>
        </div>
    </footer>
    <script src=-"https://kit.fontawesome.com/9b539e9ee8.js" crossorigin="anonymous"></script>
</body>
</html>