<%-- 
    Document   : confirm
    Created on : 25 Jan, 2019, 4:41:33 PM
    Author     : Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Confirmation</title>
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
h2{
    padding-left: 120px;
    padding-top: 30px;
}

#oo{
    padding-left: 80px;
    padding-top: 30px;
    font-size: 20px;
    font-weight: bold;
}

p{
      padding-left: 80px;
    font-size: 20px;
    font-weight: bold;
}
#money
{
    //border:2px solid red;
    margin-top: 50px;
    margin-left: 470px;
    width:400px;
    height: 450px;
    background-color: white;
}
</style>
    <body onload="chk()">
        <%  String se=session.getAttribute("user").toString(); 
            %>
            
            
             <%
              int oid=0,quan=0;
               double prc=0.0;
               String addr="", pro="";
        
            try{
           
               Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shopkart","root","");  
                String s="select * from cusentry where email='"+se+"'";
                Statement stm=con.createStatement();
                ResultSet rs=stm.executeQuery(s);
                rs.last();
                oid=rs.getInt(1);
                addr=rs.getString(9);
                pro=rs.getString(3);
                quan=rs.getInt(5);
                prc=rs.getDouble(8);
        }
        
        catch(Exception e)
            {
                out.println(e);
            }
            %>
            
            <div id="header">
        
	<div id="cont">
	<a href="loginshop.jsp">Login</a>
        &nbsp;&nbsp;&nbsp;&nbsp;<a href="cart.jsp">Cart</a>
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
            
            <div id="money">
                <h2>Money Receipt </h2>
                
                <p id="oo"> Order Id : &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;   <%=oid%> </p>
                <p> Address : &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;   <%=addr%> </p>
                <p> Product : &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;   <%=pro%> </p>
                <p> Quantity : &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;   <%=quan%> </p>
                <p> Total Price : &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;   <%=prc%> </p>
                
                
               &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;  <input type="submit" name="pr" value="print" id="pr">
            </div>
    </body>
</html>
