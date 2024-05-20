import java.sql.*;
class jdbcconn{
 
public static void main(String[] args){
try{
Class.forName("oracle.jdbc.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","irfan");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from allusers");
while(rs.next())
{
System.out.println(rs.getString(1)+" "+rs.getString(2));

}
con.close();

}
catch(Exception e){
System.out.println(e);

}
}
 }
