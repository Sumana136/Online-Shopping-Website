<%-- 
    Document   : payment
    Created on : 26 Dec, 2018, 5:07:55 PM
    Author     : Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Payment</title>
        
    </head>
     <style>
body
{
    background-image: url(image/confirm.jpeg);
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
    margin-top: 150px;
}

td,#aa{
    color:blue;
}
</style>

    <body>
       
        <%
            String a=request.getParameter("ptype");
            String b=request.getParameter("brand");
            int c=Integer.parseInt(request.getParameter("quan"));
            int prc=0,qnt=0,pid=0;
            int total=0,fquan=0;
            
             try
                        {
                     Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shopkart","root","");
                       
                        String sql="select * from product where item='"+a+"' and brand='"+b+"'";
                        Statement st=con.createStatement();
                        ResultSet rs=st.executeQuery(sql);
                        
                        while(rs.next())
                        {
                            pid=rs.getInt(1);
                            prc=rs.getInt(6);
                            qnt=rs.getInt(5);
                        }
                    
                        total=c*prc;
                        
                        if(qnt<c)
                        {
                            response.sendRedirect("stock.jsp");
                        }
                        
                        else
                        {
                        fquan=qnt-c;
                        
                        String sql2="update product set quantity="+fquan+" where pro_id="+pid+"";
                        Statement st2=con.createStatement();
                        st2.executeUpdate(sql2);
                        }
                        }
                         catch(Exception e)
                         {
                         out.println(e);
                         }
                            
          %>
          
          
          <div id="header">
         <%  String se=session.getAttribute("user").toString(); 
            %>
	<div id="cont">
	<a href="loginshop.jsp">Login</a>
        &nbsp;&nbsp;&nbsp;&nbsp;<a href="cart.jsp">Cart</a> &nbsp;&nbsp;&nbsp;&nbsp; <a id="wel">Welcome &nbsp;&nbsp;<%=se%></a>
          &nbsp;&nbsp;&nbsp;&nbsp;<a href="#">LogOut</a>
	</div>
	<div id="menu">
	<ul>
		<li><a href="#">Home</a></li>
		<li> <a href="#">Men </a></li>
		<li> <a href="#">Women </a></li>
		<li> <a href="#">Kid </a></li>
                <li><a href="#">Accessories</a></li>
		
	</ul>
	</div>
</div>
        
        <form name="f1" action="final.jsp" method="post">
        
            <table bgcolor="pink" border="0" align="center" cellpadding="8" cellspacing="8">
                <tr><td>Product</td><td><input type="text" name="ptype" value="<%=a%>" readonly></td></tr>
                
                
                <tr><td>Brand</td><td><input type="text" name="brand" value="<%=b%>" readonly></td></tr>
                
                
                <tr><td>Quantity</td><td><input type="text" name="qnt" value="<%=c%>" readonly></td></tr>
                
                <tr><td>Total Price</td><td><input type="text" name="prc" value="<%=total%>" readonly></td></tr>
                
                <tr><td>Delivery Address</td><td><input type="text" name="del"></td></tr>
                
                <tr>
                    <th>Select a payment option</th>      
                </tr>
                
                <tr>
                    <td>  <input type="radio" name="pay" value="cash">Cash On Delivery</td>
                    <td>  <input type="radio" name="pay" value="card">Credit/Debit
                      &nbsp;&nbsp;&nbsp;  <input type="radio" name="pay" value="nb">Net Banking</td>
                </tr>
                
                <tr><td>Date</td><td><input type="text" name="od" value="<%=new java.util.Date()%>"></td></tr>
                
                <tr>
                    <td colspan="2">
                        <input type="submit" name="sub" value="Proceed to Pay">
                    </td>
                </tr>
            </table>     
        </form>
    </body>
</html>
