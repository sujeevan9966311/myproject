<%@ page import="java.sql.*,databaseconnection.*" errorPage=""%>
<% 
    String a=request.getParameter("a");
	
	String  a1=null,pname=null,category=null,price=null;
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
	String sql="select * from products where pid='"+a+"' ";
	try
	{
	    con=databasecon.getconnection();
	    st=con.createStatement();
	    rs=st.executeQuery(sql);
		while(rs.next())
		{
		 a1= rs.getString("pid");
		 session.setAttribute("pid",a1);
		 pname=rs.getString("pname");
		  session.setAttribute("pname",pname);
		 category=rs.getString("category");
		  session.setAttribute("category",category);
		 price=rs.getString("price");
		  session.setAttribute("price",price);
		//session.setAttribute("pid",pid1);
		//System.out.println(pid);
		//session.setAttribute("id",id);
		//String name=rs.getString(2);
		//session.setAttribute("name",name);
		//String pname=rs.getString(2);
		
		
		
		//String  utype=rs.getString(7);
		
		}
	   
	}
	catch(SQLException e1)
	{
		
		System.out.println(e1);
	
	 }

	finally
	{
	     st.close();
	      con.close();
	}
            %>
       

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Spectrum, Free Web Template</title>
<meta name="keywords" content="spectrum, free template, jquery, sliding pages, templatemo" />
<meta name="description" content="Spectrum is free web template with gallery and sliding pages." />

	<link href="templatemo_style.css" type="text/css" rel="stylesheet" /> 
	<script type="text/javascript" src="js/jquery.min.js"></script> 
	<script type="text/javascript" src="js/jquery.scrollTo-min.js"></script> 
	<script type="text/javascript" src="js/jquery.localscroll-min.js"></script> 
	<script type="text/javascript" src="js/init.js"></script> 
    
    <link rel="stylesheet" href="css/slimbox2.css" type="text/css" media="screen" /> 
    <script type="text/JavaScript" src="js/slimbox2.js"></script> 
<script language="javascript" type="text/javascript" src="datetimepicker.js">



</script>


	
	<!-- Timestamp: 1236819900 --> 
</head> 
<body> 
<div id="templatemo_header">
    
  <p><font size="+2" color="#FFFFFF"><b><font size="+3" color="#CC0000"><Strong>S</Strong></font>ecuring <font size="+2" color="#CC0000"><Strong>O</Strong></font>nline
   Reputation Systems Through Trust Modeling 
    </b></font></p>
  <p><font color="#FFFFFF" size="+2"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  and </b></font><font size="+2" color="#FFFFFF"><b>Temporal </b></font><font  color="#FFFFFF" size="+2"><b>Analysis</b></font> 
  </p>
  <div class="clear"></div>
</div>
<div id="templatemo_wrapper">
<div id="templatemo_main">
    <div id="content"> 
      <div id="home"> </div>
      <div class="section section_with_padding" id="about"> 
        <h2 align="center"><b>Purchase Product</b></h2>
        <p>&nbsp;</p>
		
		
		<%
		//String a=request.getParameter("a");
		//String a=(String)session.getAttribute("a");
		%>
		
		
        <form action="purchase1.jsp" name="s1" method="get" onSubmit="return valid1()">
          <table align="center">
            <tr> 
              
              <td><table align="center">
                  <tr> 
                    <td><font size="2"  color="#000000"><b>Product_Id</b></font></td>
                    <td><input disabled type="text" name="pid" value="<%=a1%>"></td>
                  </tr>
                  <tr> 
                    <td><font size="2"  color="#000000"><b>product_Name</b></font></td>
                    <td><input  disabled type="text" name="pname" value="<%=pname%>"></td>
                  </tr>
                  <tr> 
                    <td><font size="2"  color="#000000"><b>Category</b></font></td>
                    <td><input disabled type="text" name="category" value="<%=category%>"></td>
                  </tr>
                  <tr> 
                    <td><font size="2"  color="#000000"><b>Original Price</b></font></td>
                    <td><input disabled type="text" name="price" value="<%=price%>"></td>
                  </tr>
                  <tr> 
                    <td></td>
                    <td><input type="submit"  value="Purchase"></td>
                  </tr>
                </table></td>
            </tr>
          </table>
        </form>
        <a href="index.html" class="home_btn">home</a> </div>
    </div> 
</div>

<div id="templatemo_sidebar">
	<div class="sidebar_box"><a href="#about"> <span class="about"></span> <span class="menu_title">Home</span> 
      <span class="menu_desc">Morbi in nibh eleifend, bibendum neque dictum.</span> 
      </a> </div>
    <div class="sidebar_box"><a href="#services"> <span class="services"></span> 
      <span class="menu_title">Admin Login</span> <span class="menu_desc">Sed 
      dignissim tincidunt leo eget fermentum.</span> </a> </div>
    <div class="sidebar_box"><a href="#testimonial"> <span class="testimonial"></span> 
      <span class="menu_title">User Login</span> <span class="menu_desc">Lorem 
      ipsum dolor sit amet, consectetur adipiscing elit.</span> </a> </div>
    <div class="sidebar_box"><a href="#contact"> <span class="contact"></span> 
      <span class="menu_title">Contact</span> <span class="menu_desc">Duis elementum 
      felis elit, id consequat diam molestie eu.</span> </a> </div>
    <ul id="social_buttons">
        <li><a href="#" class="facebook"></a></li>
        <li><a href="#" class="flickr"></a></li>
        <li><a href="#" class="picasa"></a></li>
        <li><a href="#" class="twitter"></a></li>
        <li><a href="#" class="youtube"></a></li>
        <li><a href="#" class="vimeo"></a></li>                        
    </ul>
    
</div>
<div class="clear"></div>
</div>

<div id="templatemo_footer_wrapper">
	<div id="templatemo_footer">
    	
    </div>
</div>

</body> 
<script type='text/javascript' src='js/logging.js'></script>
</html>