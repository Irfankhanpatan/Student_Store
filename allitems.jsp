
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




</style>    
</head>
<body style="background-color:#fffafa;">
<%

try{
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","irfan");
Statement st1=con.createStatement();
ResultSet rs1=st1.executeQuery("select * from allitems");
%>

<%
while(rs1.next()){
Statement st2=con.createStatement();
ResultSet rs2=st2.executeQuery("select * from allitems where itemid="+rs1.getString(1));
while(rs2.next()){out.println("<div class='card-container'><div class='card u-clearfix'><div class='card-body'><span class='card-number card-circle subtle'>"+rs2.getString(1)+"</span> <img id='img'src='https://images-na.ssl-images-amazon.com/images/I/41kf1lhWdpL.jpg' alt='' class='card-media''/><span class='card-author subtle'>"+rs2.getString(4)+"</span><h2 class='card-title'>"+rs2.getString(3)+"</h2><span class='card-description subtle'>"+rs2.getString(5)+".</span><div class='card-read'>Cost :"+rs2.getString(2)+"rs</div><form method='post' action='myfav.jsp'><input type='text' style='width:0px; height:0px' name='id' value='"+rs2.getString(1)+"'><button id='add' style='font-size:30px;background-color:white; border-radius:50%'>+</button></form></div></div><div class='card-shadow'></div></div>");}


}
%>









<%
con.close();


}
catch(Exception e){
System.out.println(e);

}
%>
</body>