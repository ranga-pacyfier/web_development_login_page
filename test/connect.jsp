<%@ page import = "java.sql.*"%>
<%
String Name = request.getParameter("Name");
String Password = request.getParameter("Password");
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sample","root",""); 
PreparedStatement stmt=con.prepareStatement("insert into sam(Name,Password)values(?,?);");
stmt.setString(1,Name);
stmt.setString(2,Password);
int i=stmt.executeUpdate();
if(i>0) {
out.println("You are successfully registered...");
}
else
{
out.println("You are not registered...");}}
catch (Exception e2)
{
out.println(e2);
}
%>

<a href="sbs landing page.htm"> <H1>HOME PAGE</H1></a>