<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>
<html>
<head>
<title> Scientific Workflow</title>

</head>

<body>
<%
FileInputStream fis;

String a=(String)session.getAttribute("pid"); 

String b=(String)session.getAttribute("pname"); 

String c=(String)session.getAttribute("category"); 

String d=(String)session.getAttribute("price"); 



Integer uid=(Integer)session.getAttribute("uid");
String uname=(String)session.getAttribute("name"); 
String email=(String)session.getAttribute("email"); 
java.util.Date now = new java.util.Date();
	String date=now.toString();
	 String DATE_FORMAT = "yyyy-MM-dd hh:mm:ss";
	 SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
     String strDateNew = sdf.format(now) ;



PreparedStatement ps = null;

	ResultSet rs = null;
		


	
	try
	{
		
		Connection con = databasecon.getconnection();

		ps = con.prepareStatement("insert into purchase(uid,uname,email,pid,pname,category,price,date) values(?,?,?,?,?,?,?,?)");
		
		ps.setInt(1,uid);
		ps.setString(2,uname);
ps.setString(3,email);



ps.setString(4,a);
ps.setString(5,b);
ps.setString(6,c);
ps.setString(7,d);
ps.setString(8,strDateNew);


ps.executeUpdate();

response.sendRedirect("success1.jsp?success");
}
catch(Exception e1)
{
out.println(e1.getMessage());
}

%>
</body>
</html>
