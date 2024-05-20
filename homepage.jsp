<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>How to Create responsive Homepage</title>
    <style>

* {
margin: 0;
padding: 0;
}
body {
font-family: 'Poppins', sans-serif;
}
.wrapper {
width: 1170px;
margin: auto;
}
header {
/*background: linear-gradient(rgba(0, 0, 0, 0.8), rgba(0, 0, 0, 0.8)), url("bgpic.jpg");*/
background: linear-gradient(#00bf8f,#001510);
height: 100vh;
-webkit-background-size: cover;
background-size: cover;
backgroun d-position: center center;
position: relative;
}
.nav-area {
float: right;
list-style: none;
margin-top: 30px;
}
.nav-area li {
display: inline-block;
}
.nav-area li a {
color: #fff;
text-decoration: none;
padding: 5px 20px;
font-family: poppins;
font-size: 16px;
text-transform: uppercase;
}
.nav-area li a:hover {
    background: #03e9f4;
    color: #fff;
    border-radius: 5px;
    box-shadow: 0 0 5px #03e9f4,
                0 0 25px #03e9f4,
                0 0 50px #03e9f4,
                0 0 100px #03e9f4;
  }
 
  .login-box a span {
    position: absolute;
    display: block;
  }
}
.logo {
float: left;
color:pink;
text-align: center;
}

.welcome-text {
position: absolute;
width: 600px;
height: 300px;
margin: 20% 30%;
text-align: center;
}
.welcome-text h1 {
text-align: center;
color: #fff;
text-transform: uppercase;
font-size: 60px;
}
.welcome-text h1 span {
color: #00fecb;
}
.welcome-text a{

color: #fff;
border:1px solid white;
text-decoration: none;
padding: 5px 20px;
font-family: poppins;
font-size: 16px;
text-transform: uppercase;
}
.welcome-text a:hover {
background: #03e9f4;
    color: #fff;
    border-radius: 5px;
    box-shadow: 0 0 5px #03e9f4,
                0 0 25px #03e9f4,
                0 0 50px #03e9f4,
                0 0 100px #03e9f4;
}
.welcome-text a:hover {
background: #fff;
color: #333;
}
/*resposive*/

@media (max-width:600px) {
.wrapper {
width: 100%;
}
.logo {
float: none;
width: 50%;
text-align: center;
margin: auto;
}

.nav-area {
float: none;
margin-top: 0;
}
.nav-area li a {
padding: 5px;
font-size: 11px;
}
.nav-area {
text-align: center;
}
.welcome-text {
width: 100%;
height: auto;
margin: 30% 0;
}
.welcome-text h1 {
font-size: 30px;
}

}

</style>    
</head>
<body>
    <header>
    <div class="wrapper">
        <div class="logo">
            </div>
<ul class="nav-area">
<li><a href="login.jsp">Login</a></li>
<li><a href="reg.jsp">Register</a></li>
<li><a href="about.jsp">About</a></li>

</ul>
</div>
<div class="welcome-text">
        <h1>
Student <span>Store</span></h1>
<a id="c1" href="contact.jsp">Contact US</a>
    </div>
</header>

</body>
</html>
