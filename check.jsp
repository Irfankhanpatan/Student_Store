<%@ page import ="java.lang.String.*"%>
<%@ page import ="java.sql.*"%>  
<%@ page import ="oracle.jdbc.driver.*" %>
<%@ page import ="oracle.sql.*" %>
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
 height:100vh;
-webkit-background-size: cover;
background-size: cover;
backgroun d-position: center center;
position: relative;
}
.main {
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
width: 200px;
height: 300px;

}
.welcome-text h3 {
text-align: center;
color: #fff;
text-transform: uppercase;

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
a{
padding-right:10px;



}
/*resposive*/

/* @media (max-width:600px) {
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
.welcome-text h3 {
font-size: 30px;
}

} */

</style>    
</head>
<%String r=request.getParameter("rn"),p=request.getParameter("ps");
try{

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","irfan");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from allusers1 where roolno='"+r+"' AND password='"+p+"'");
if(rs.next())
{session.setAttribute("ROLLNO",r);
%>
<body>
<header><div ><div class='welcome-text'><h3><%=r%><br>(<%=rs.getString(2)%>)</h3></div>
<ul class='nav-area'><li>
<a href='myfav.jsp' target="go">My Fav</a></li>
<li><a href='allitems.jsp' target="go">Find Items</a></li>
<li><a href='https://www.jaspertronics.com/pages/googledriven?msclkid=7f85d4d8aa7016a3df32b4c9857dd7eb' target="go">My Cart</a></li>
<li><a href='about.jsp' target="go">About</a></li>
<li><a href='homepage.jsp'>Signout</a></li>
<li><a href='upload.jsp' target="go">Upload</a></li>
<li><a href='myitems.jsp' target="go">myitems</a></li>
<li><a href='reg.jsp'>Delete Account</a></li>
</ul>

</div>
<div>
       <iframe name="go" style="width:100%; height:100%"></iframe>
           </div>
</header>


</body>
<%
}
else{
session.setAttribute("TYPE","invaliduser");
con.close();
response.sendRedirect("login.jsp");

}

}
catch(Exception e){
System.out.println(e);

}
%>
</body>

