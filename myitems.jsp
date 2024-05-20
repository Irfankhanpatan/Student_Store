<%@ page import ="java.lang.String.*"%>
<%@ page import ="java.sql.*"%>

   <head>
   
   

    <style>


*, *:before, *:after {
  box-sizing: inherit;
}

.u-clearfix:before,
.u-clearfix:after {
  content: " ";
  display: table;
}

.u-clearfix:after {
  clear: both;
}

.u-clearfix {
  *zoom: 1;
}

.subtle {
  color: #aaa;
}

.card-container {
  margin: 25px auto 0;
  position: relative;
  width: 400px;
  height:300px;
  display:inline-block;
  margin-right:10px;
  margin-bottom:140px;
 
 
}

.card {
  background-color: #fff;
  padding: 30px;
  position: relative;
  box-shadow: 0 0 5px rgba(75, 75, 75, .07);
  z-index: 1;
}

.card-body {
  display: inline-block;
  float: left;
  width: 250px;
}

.card-number {
  margin-top: 15px;
}

.card-circle {
  border: 1px solid #aaa;
  border-radius: 50%;
  display: inline-block;
  line-height: 22px;
  font-size: 12px;
  height: 25px;
  text-align: center;
  width: 25px;
}

.card-author {
  display: block;
  font-size: 12px;
  letter-spacing: .5px;
  margin: 15px 0 0;
  text-transform: uppercase;
}

.card-title {
  font-family: 'Cormorant Garamond', serif;
  font-size: 60px;
  font-weight: 300;
  line-height: 60px;
  margin: 10px 0;
}

.card-description {
  display: inline-block;
  font-weight: 300;
  line-height: 22px;
  margin: 10px 0;
}

.card-read {
  cursor: pointer;
  font-size: 18px;
  font-weight: 500;
 float:left;
  position: relative;
  text-align: right;
  text-transform: uppercase;
}



.card-tag {
  float: right;
  margin: 5px 0 0;
}

.card-media {
align:;
 float:right;
height:30%;
width:30%;
}

.card-shadow {
  background-color: #fff;
  box-shadow: 0 2px 25px 2px rgba(0, 0, 0, 1), 0 2px 50px 2px rgba(0, 0, 0, 1), 0 0 100px 3px rgba(0, 0, 0, .25);
  height: 1px;
  margin: -1px auto 0;
  width: 80%;
  z-index: -1;
}

* {
margin: 0;
padding: 0;
}

.card-description subtle {
    margin: 25px auto 0;
  position: relative;
  width: 10px;
  height:10px;
  display:inline-block;
  margin-right:10px;
  margin-bottom:20px;
 }


</style>    
</head>
<body style="background-color:#fffafa;">
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.lang.String.*"%>
<%@ page import ="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
 <%String query;
   String item,cost,des,roll,t;
int size=0;
cost=(String)request.getParameter("c");
des=(String)request.getParameter("d");

item=(String)request.getParameter("items");
try
{
roll=(String)session.getAttribute("ROLLNO");


Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","irfan");
if(item!=null){
Statement st1=con.createStatement();
ResultSet rs=st1.executeQuery("select itemid from allitems");
while(rs.next()){

size=rs.getInt(1);
}
size=size+1;
PreparedStatement mystatement = con.prepareStatement("insert into allitems values(?,?,?,?,?)");
t=""+size;
mystatement.setString(1,t);
mystatement.setString(2, cost);
mystatement.setString(3, roll);
mystatement.setString(4, item);
mystatement.setString(5, des);

int j=mystatement.executeUpdate();



Statement st2=con.createStatement();
ResultSet rs2=st2.executeQuery("select * from allitems where roolno='"+roll+"'");
while(rs2.next()){out.println("<div class='card-container'><div class='card u-clearfix'><div class='card-body'><span class='card-number card-circle subtle' id='data' >"+rs2.getString(1)+"</span> <img id='img'src='https://images-na.ssl-images-amazon.com/images/I/41kf1lhWdpL.jpg' alt='' class='card-media''/><span class='card-author subtle'>"+rs2.getString(3)+"</span><h2 class='card-title'>"+rs2.getString(4)+"</h2><span class='card-description subtle'>"+rs2.getString(5)+".</br></span><div class='card-read'>Cost :"+rs2.getString(2)+"rs</div></div></div><div class='card-shadow'></div></div>");}

con.close();
}

else{
Statement st2=con.createStatement();
ResultSet rs2=st2.executeQuery("select * from allitems where roolno='"+roll+"'");
while(rs2.next()){out.println("<div class='card-container'><div class='card u-clearfix'><div class='card-body'><span class='card-number card-circle subtle' id='data' >"+rs2.getString(1)+"</span> <img id='img'src='https://images-na.ssl-images-amazon.com/images/I/41kf1lhWdpL.jpg' alt='' class='card-media''/><span class='card-author subtle'>"+rs2.getString(3)+"</span><h2 class='card-title'>"+rs2.getString(4)+"</h2><span class='card-description subtle'>"+rs2.getString(5)+".</br></span><div class='card-read'>Cost :"+rs2.getString(2)+"rs</div></div></div><div class='card-shadow'></div></div>");}

con.close();
}

}

catch(Exception e)
{
out.println(e);

}



%>

</body>