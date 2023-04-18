<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>home</title>
	
	<style>
	@import url('https://fonts.googleapis.com/css2?family=M+PLUS+Rounded+1c:wght@300;700&family=Poppins:wght@200;700&display=swap');
	/* RESETS */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Poppins', sans-serif;
    margin: ;
}

h1 {
    font-size: 3rem;
}

h2 {
    font-size: 2rem;
}

p {
    font-family: 'Poppins', sans-serif;
    font-size: 1.25rem;
    line-height: 1.8rem;
}

a {
    text-decoration: none;
    display: inline-block;
}

/* UTILITY CLASS */

.uni-padding {
    padding: 0 7%;
}

.small-bold-text {
    font-size: 1rem;
    font-weight: 700;
}


.container {
    max-width: 1180px;
    margin-inline: auto;
}

.top-banner {
    background-image: url('D:\Expenditure Adviser\images\top.png');
    background-color: purple;
    background-size: 300px;
    background-repeat: no-repeat;

}

.banner-text {
    color: white;
    padding: 15px 30px;
    text-align: center;
}

.logobar {
    height: 50px;
}

.navbar {
    padding: 22px;
}

.navbar {
    display: inline-block;

}

#logobar {
    float: left;

}

.navbar a {
    font-size: 25px;
    padding: 22px;
    color: purple;
}

.navbar a:hover {
    text-decoration: none;
    text-decoration: 1px underline;
    color: purple;
}

#poster {
    background-image: url('<%=request.getContextPath() %>/images/banner.jpg');
    height: 500px;
    background-position: center;
    background-size: cover;
    justify-content: center;
    align-items: center;
    color: #fdfdfd;
}

/* FOOTER */
#imp-link {
    background-color: rgb(78, 39, 78);
    color: #fdfdfd;
    overflow: auto;
}

.div33 {
    width: 33.33%;
    float: left;
    padding: 25px 50px;
}

.div33 p{
    font-size:15px;
}

.div33 h3 {
    text-decoration: underline;
    text-underline-offset: 5px;
    text-decoration-thickness: 2px;
}

.footer-menu {
    list-style-type: none;
}

.footer-menu li {
    padding: 3px;
}

.footer-menu li a {
    text-decoration: none;
    color: #fdfdfd;
}

#footer-menu-container {
    padding-left: 100px;
}

#copyright {
    background-color: #1e0120;
}

#copyright p {
    padding: 15px;
}

#copypath {
    text-align: center;
    color: #ad52bd;
}
	</style>

	<link rel="apple-touch-icon" sizes="180x180" href="<%=request.getContextPath() %>/images/favicon/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="<%=request.getContextPath() %>/images/favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="<%=request.getContextPath() %>/images/favicon/favicon-16x16.png">
    <link rel="manifest" href="<%=request.getContextPath() %>/images/favicon/site.webmanifest">
    <link rel="mask-icon" href="<%=request.getContextPath() %>/images/favicon/safari-pinned-tab.svg" color="#5bbad5">
    <meta name="msapplication-TileColor" content="#da532c">
    <meta name="theme-color" content="#ffffff">

</head>
<body>
 <header>
        <div class="top-banner">
            <div class="container">
                <div class="small-bold-text banner-text">Planning is bringing the FUTURE into present.</div>
            </div>
        </div>
        <span id="logobar" class="uni-padding">
            <img src="<%=request.getContextPath() %>/images/LOGO.png" alt="" style="height:120px">
        </span>
        <span class="navbar" class="uni-padding">
            <a href="index.jsp">Home</a>
            <a href="about.jsp">About</a>
            <a href="">Services</a>
            <a href="team.jsp">Team</a>
            <a href="blog.jsp">Blog</a>
            <a href="contact.jsp">Contact</a>
            <a href="login.jsp">Login</a>
        </span>
        <br>

        <div id="poster">
            <!-- <img src="<%=request.getContextPath() %>/images/banner.jpg" alt="" style="height: 875px;" width="2100px"> -->
        </div>
    </header>
    <br>
    <br>
    <br>
    <br>
    <!-- FOOTER -->
    <footer>
        <div id="imp-link" class="uni-padding">
            <div class="div33" style="padding-left: 0px;">
                <h3>About US</h3><br>
                <p style="text-align:justify">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ullam
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

    <script src="https://kit.fontawesome.com/9b539e9ee8.js" crossorigin="anonymous"></script>
</body>

	

</html>