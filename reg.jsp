<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.lang.String.*"%>
<%@ page import ="java.sql.*"%>  
<%@ page import ="oracle.jdbc.driver.*" %>
<%@ page import ="oracle.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="Text/html; charset=UTF-8">
<% 
try
{ String rollno=(String)session.getAttribute("ROLLNO");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","irfan");
Statement st=con.createStatement();
int i=st.executeUpdate("delete from allusers1 where roolno='"+rollno+"'");
int j=st.executeUpdate("drop table myfav"+rollno);
int k=st.executeUpdate("delete from allitems where roolno='"+rollno+"'");
int l=st.executeUpdate("drop table mycart"+rollno);
session.setAttribute("ROLLNO","");
}
catch(Exception e)
{

}
%>
<style>


body {
    margin:0;
    padding:0;
    font-family: sans-serif; 
    background: linear-gradient(#00bf8f,#001510);
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
    padding: 10px 0;
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
 
  .a {
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
 
  .a:hover {
    background: #03e9f4;
    color: #fff;
    border-radius: 5px;
    box-shadow: 0 0 5px #03e9f4,
                0 0 25px #03e9f4,
                0 0 50px #03e9f4,
                0 0 100px #03e9f4;
  }
 
  .a span {
    position: absolute;
    display: block;
  }
 
 .a span:nth-child(1) {
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
 
  .a span:nth-child(2) {
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
 
  .a span:nth-child(3) {
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
  #but {    
    background-color: Transparent;
    background-repeat:no-repeat;
    border: none;
    cursor:pointer;
    overflow: hidden;
   
}
</style>
</head>
<body>
<div class="login-box">
    <h2>Register</h2>
    <form id="myform" action="login.jsp">
      <div class="user-box">
        <input type="text" id="unn" name="un">
        <label>Username</label>
      </div>
      <div class="user-box">
        <input type="text" id="rnn" name="rn">
        <label>Roll Number</label>
      </div>
  <div class="user-box">
        <input type="text" id="mii" name="mi">
        <label>Mail Id</label>
      </div>
  <div class="user-box">
        <input type="text" id="pnn" name="pn">
        <label>Phone Number</label>
      </div>
  <div class="user-box">
        <input type="password" id="passs" name="pass">
        <label>Password</label>
      </div>
  <div class="user-box">
        <input type="password" id="cpasss" name="cpass">
        <label>Retype Password</label>
      </div>
<button id="sub" style="background-color: #ffffff; opacity: .4;margin-left:900px;"></button>
     </form>
<div class="a">
 <span></span>
 <span></span>
 <span></span>
 <span></span>
  <button id="but" onclick="myfun()">Sign Up</button> 
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

<script>
function myfun(){
var rn=document.getElementById('rnn').value.length;
var mi=document.getElementById('mii').value.length;
var pn=document.getElementById('pnn').value.length;
var pass=document.getElementById('passs').value;
var cpass=document.getElementById('cpasss').value;
 if(rn==10){
   if(mi>10){
	if(pn==10){
		if(pass==cpass){
                         
			document.getElementById('myform').submit();
			
		}
		else{alert("password not matches");}
	}
	else{alert("enter valid phone num");
	}
   }
    else{alert("enter valid mail id");}
}
else{alert("enter valid rollno");}


}
</script>

</body>  
  </html>