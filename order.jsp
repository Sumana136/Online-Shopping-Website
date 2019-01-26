<%-- 
    Document   : order
    Created on : 14 Dec, 2018, 4:31:36 PM
    Author     : Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Your Order</title>
        <style>
body
{
    background-image: url(image/shop6.jpeg);
}

#header
{	
	width:100%;
	height:60px;
	background-color:black;
}

#menu
{
	float:right;
}

#cont
{
	float:left;
	//border:2px solid red;
	width:400px;
	padding:20px;
	
}

li{
	list-style-type:none;
	display:inline;
	padding:25px;
}

a{
	color:white;
	font-size:17px;
	text-decoration:none;	
}

table
{
    margin-top: 180px;
}

td,#aa{
    color:blue;
}
</style>
    </head>
    <body>
       
         <div id="header">
         <%  String se=session.getAttribute("user").toString(); 
            %>
	<div id="cont">
	<a href="loginshop.jsp">Login</a>
        &nbsp;&nbsp;&nbsp;&nbsp;<a href="cart.jsp">Cart</a> &nbsp;&nbsp;&nbsp;&nbsp; <a id="wel">Welcome &nbsp;&nbsp;<%=se%></a>
          &nbsp;&nbsp;&nbsp;&nbsp;<a href="loginshop.jsp">LogOut</a>
	</div>
	<div id="menu">
	<ul>
		<li><a href="#">Home</a></li>
		<li> <a href="men.jsp">Men </a></li>
		<li> <a href="women.jsp">Women </a></li>
		<li> <a href="kids.jsp">Kid </a></li>
                <li><a href="accessories.jsp">Accessories</a></li>
		
	</ul>
	</div>
</div>
        
        <form name="f4" action="payment.jsp" method="post">
            <table  bgcolor="white" border="0" align="center" cellpadding="8" cellspacing="8">
                
                <tr>
                    <td>Product type</td><td>
                        <select name="ptype">
                        <option>--Select--</option>;
                        <%
                         try
                        {
                     Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shopkart","root","");
                       
                        String sql="select * from product where type in ('men','women','women/men','kids')";
                        Statement st=con.createStatement();
                        ResultSet rs=st.executeQuery(sql);
                        
                        while(rs.next())
                        {
                            String item=rs.getString(2);
                            
                            out.println("<option value="+item+">"+item+"</option>");
                            
                        }
                    
                        }
                         catch(Exception e)
                         {
                         
                         }
                            
                         %>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Brand</td><td>
                        <select name="brand">                   
                              <option>--Select--</option>;
                            <%
                         try
                        {
                     Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shopkart","root","");
                       
                        String sql="select * from product type in ('men','women','women/men','kids')";
                        Statement st=con.createStatement();
                        ResultSet rs=st.executeQuery(sql);
                        
                        
                        while(rs.next())
                        {
                            String brand=rs.getString(4);
                            out.println("<option value="+brand+">"+brand+"</option>");
                            
                        }
                    
                        }
                         catch(Exception e)
                         {
                         
                         }
                            
                         %>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Quantity</td><td><input type="number" name="quan"></td>
                </tr>
                <tr>
                    <td colspan="2" align="center" bgcolor="cyan"><input type="submit" name="sub" value="ok"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
