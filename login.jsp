<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*"%>
<%@ page import ="java.lang.String.*"%>
<html>

 <%String query;
   String pas,passc,mailid,rollno,phonenum,username,mode;
mode=(String)session.getAttribute("TYPE");
rollno=request.getParameter("rn");
if(rollno!=null){
try
{pas=request.getParameter("pass");
mailid=request.getParameter("mi");


phonenum=request.getParameter("pn");
username=request.getParameter("un");

Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","irfan");
PreparedStatement mystatement = con.prepareStatement("insert into allusers1 values(?,?,?,?,?)");

mystatement.setString(1, rollno);
mystatement.setString(2, username);
mystatement.setString(3, phonenum);
mystatement.setString(4, pas);
mystatement.setString(5, mailid);
PreparedStatement mystatement1 = con.prepareStatement("create table myfav"+rollno+"(itemid varchar(4))");
PreparedStatement mystatement2 = con.prepareStatement("create table mycart"+rollno+"(itemid varchar(4))");
mystatement1.executeUpdate();
mystatement2.executeUpdate();
mystatement.executeUpdate();
con.close();


}

catch(Exception e)
{

out.println(" <script> alert('Existed user') </script>");

}


}
else if(mode=="invaliduser"){
out.println(" <script> alert(' user not exists') </script>");
session.setAttribute("TYPE","");
session.setAttribute("ROllNO","");

}
%>

<head>
<meta http-equiv="Content-Type" content="Text/html; charset=UTF-8">

<style>


body {
    margin:0;
    padding:0;
    font-family: sans-serif;
    background: linear-gradient(#78d8e6,#001510);
    min-height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
}
 
  .login-box {
    width: 400px;
    padding: 40px;
    background: rgba(0,0,0,0);
    box-sizing: border-box;
    box-shadow: 0 15px 25px rgba(0,0,0,.6);
    border-radius: 10px;
  }
 
  .login-box h2 {
    margin: 0 0 30px;
    padding: 0;
    color: #fff;
    text-align: center;
  }
 
  .login-box .user-box {
    position: relative;
  }
 
  .login-box .user-box input {
    width: 100%;
    padding: 10px 0;
    font-size: 16px;
    color: #fff;
    margin-bottom: 30px;
    border: none;
    border-bottom: 1px solid #fff;
    outline: none;
    background: transparent;
  }
  .login-box .user-box label {
    position: absolute;
    top:0;
    left: 0;
   
    font-size: 16px;
    color: #fff;
    pointer-events: none;
    transition: .5s;
  }
 
  .login-box .user-box input:focus ~ label,
  .login-box .user-box input:active ~ label{
    top: -20px;
    left: 0;
    color: #03e9f4;
    font-size: 12px;
  }
 
  .login-box form .a {
    position: relative;
    display: inline-block;
    padding: 10px 20px;
    color: #03e9f4;
    font-size: 16px;
    text-decoration: none;
    text-transform: uppercase;
    overflow: hidden;
    transition: .5s;
    margin-top: 40px;
    letter-spacing: 4px
  }
 
  .login-box .a:hover {
    background: #03e9f4;
    color: #fff;
    border-radius: 5px;
    box-shadow: 0 0 5px #03e9f4,
                0 0 25px #03e9f4,
                0 0 50px #03e9f4,
                0 0 100px #03e9f4;
  }
 
  .login-box .a span {
    position: absolute;
    display: block;
  }
 
  .login-box .a span:nth-child(1) {
    top: 0;
    left: -100%;
    width: 100%;
    height: 2px;
    background: linear-gradient(90deg, transparent, #03e9f4);
    animation: btn-anim1 1s linear infinite;
  }
 
  @keyframes btn-anim1 {
    0% {
      left: -100%;
    }
    50%,100% {
      left: 100%;
    }
  }
 
  .login-box .a span:nth-child(2) {
    top: -100%;
    right: 0;
    width: 2px;
    height: 100%;
    background: linear-gradient(180deg, transparent, #03e9f4);
    animation: btn-anim2 1s linear infinite;
    animation-delay: .25s
  }
 
  @keyframes btn-anim2 {
    0% {
      top: -100%;
    }
    50%,100% {
      top: 100%;
    }
  }
 
  .login-box .a span:nth-child(3) {
    bottom: 0;
    right: -100%;
    width: 100%;
    height: 2px;
    background: linear-gradient(270deg, transparent, #03e9f4);
    animation: btn-anim3 1s linear infinite;
    animation-delay: .5s
  }
 
  @keyframes btn-anim3 {
    0% {
      right: -100%;
    }
    50%,100% {
      right: 100%;
    }
  }
 
  .login-box .a span:nth-child(4) {
    bottom: -100%;
    left: 0;
    width: 2px;
    height: 100%;
    background: linear-gradient(360deg, transparent, #03e9f4);
    animation: btn-anim4 1s linear infinite;
    animation-delay: .75s
  }
 
  @keyframes btn-anim4 {
    0% {
      bottom: -100%;
    }
    50%,100% {
      bottom: 100%;
    }
  }
  .button {    
    background-color: transparent;
    color: #ffffff;
    fontsize: 50px;
    background-repeat:no-repeat;
    border: none;
    cursor:pointer;
    overflow: hidden;
   
}
</style>
</head>
<body>
<div class="login-box">
    <h2>Login</h2>
    <form action="check.jsp">
      <div class="user-box">
        <input type="text" name="rn" >
       <label>username</label>
      </div>
    <div class="user-box">
        <input type="password" name="ps">
        <label>Password</label>
      </div>
<div class="a">
 <span></span>
 <span></span>
 <span></span>
 <span></span>
  <button class="button" type="submit">Login</button>
  </div>
<div class="a">
 <span></span>
 <span></span>
 <span></span>
 <span></span>
  <button class="button" type="reset">Reset</button>
</div>
<br>
<span> Don't have an account ? </span>
<br>
<div class="a">
<span></span>
<span></span>
<span></span>
<span></span>
	<button class="button" >Sign Up</button>
  </div>
     </form>

 
 
</body>  
  </html>

