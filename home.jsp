<%-- 
    Document   : home
    Created on : Dec 5, 2018, 4:26:52 PM
    Author     : Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        
          <style>
body
{
    background-image: url(image/shop.jpg);
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
#wel{color: red;}
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
</style>
    </head>
    <body>
       
       <div id="header">
         <%  String se=session.getAttribute("user").toString(); 
            %>
            
	<div id="cont">
	<a href="loginshop.jsp">Login</a>
        &nbsp;&nbsp;&nbsp;&nbsp;<a href="cart.jsp">Cart</a>   &nbsp;&nbsp;&nbsp;&nbsp; <a id="wel">Welcome &nbsp;&nbsp;<%=se%></a>
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
<table>
</table>
    </body>
</html>
