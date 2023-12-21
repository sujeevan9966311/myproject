 
 <%@ page import="java.sql.*,databaseconnection.*" errorPage=""%>
  <%
		
		
		
		
		
	int count=0;	
		
Connection con=null;
ResultSet rs=null;
PreparedStatement ps=null;
Statement st=null;

ResultSet rs1=null;
PreparedStatement ps1=null;
Statement st1=null;
String pid=null,vname=null,video=null,e=null;
String a=(String)session.getAttribute("pid");
		Integer uid=(Integer)session.getAttribute("uid");
//String vname=(String)session.getAttribute("s");
//String a=request.getParameter("a");
//session.setAttribute("a",a);
//System.out.println(a);
//String b=(String)session.getAttribute("b");

//System.out.println(b);


try
{
con=databasecon.getconnection();
 st=con.createStatement();   
 String sqll="select uid,pid,count from purchase where uid='"+uid+"' AND pid='"+a+"'";
 rs=st.executeQuery(sqll);
if(rs.next()){
	//a=rs.getString(1);
	
	
	pid=rs.getString("pid");
	


	  
	count=rs.getInt("count")+1;



try{
	Connection con1 = databasecon.getconnection();

  ps1=con1.prepareStatement("Update purchase set count=? where uid='"+uid+"' AND pid='"+a+"' ");
 // ps2=con.prepareStatement("insert into peers(vname,peer) values('"+a+"','"+b+"')");
           
			ps1.setInt(1,count);	
			ps1.executeUpdate();

response.sendRedirect("ra_update.jsp");

}

catch (Exception e1) 
		{
			out.println(e1.getMessage());
				
				
			
			
		}
}
else
{
response.sendRedirect("fault1.jsp");

}




}

catch(Exception e2)
{
out.print(e2);
}





%>