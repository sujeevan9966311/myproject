<%@ page import="java.sql.*,databaseconnection.*" errorPage=""%>
<html>
    <head>
	<title>login</title>
    </head>
    <body>
	<form>
	<% 
   
	String name=request.getParameter("aname");
	String pass=request.getParameter("apass");
	
	
	
		
		
		if( name.equalsIgnoreCase("admin") && pass.equalsIgnoreCase("admin"))
		{
		 %>
 <jsp:forward page="admin_page.jsp"/> 
	    	<%
			}
			
			
			
			
			
			
				
		
	    else
	     {
		 
		
		
	  out.println("Login Error-please check ur ID and password");
	  }

	
            %>
             </form>
       </body> 	
</html>