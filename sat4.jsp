<%@ page import="java.sql.*,databaseconnection.*"%>
<%@ page import="java.io.*"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>
<%
String a=request.getParameter("emailid");
//session.setAttribute("email",a);
String b=request.getParameter("passs");
String s=request.getParameter("category");

//int b1=0;
PreparedStatement ps = null;
	ResultSet rs = null;
	
		try
	{
		
		Connection con = databasecon.getconnection();
     	ps = con.prepareStatement("select id, name,email,vid,password from register where name='"+a+"' AND password='"+b+"' ");
		rs = ps.executeQuery();
		
		
		
		if(rs.next())
	{
int id = rs.getInt(1);
System.out.println(id);
	session.setAttribute("uid",id);
	
	String name=rs.getString(2);
	System.out.println(name);
	session.setAttribute("name",name);
	String email=rs.getString(3);
	System.out.println(email);
session.setAttribute("email",email);
String vid=rs.getString(4);
	System.out.println(vid);
session.setAttribute("vid",vid);		
	response.sendRedirect("user.jsp");
}
	
		else
		{
		out.println("enter correct user name and password");
		}
		session.setAttribute("a",a);
		session.setAttribute("b",b);
		}
	
		
catch(Exception e1)
{
out.println(e1.getMessage());
}

%>