<%-- 
    Document   : loginshop
    Created on : Dec 7, 2018, 4:49:24 PM
    Author     : Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <style>
body
{
    background-image: url(image/login.jpg);
    background-size: cover;
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
	width:300px;
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
        
	<div id="cont">
	<a href="loginshop.jsp">Login</a>
        &nbsp;&nbsp;&nbsp;&nbsp;<a href="cart.jsp">Cart</a>
        
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
        
                 
            <form name="f1" align="center" action="gateway.jsp" method="post">
    
            
            <table bgcolor="white" border="0" align="center" cellpadding="8" cellspacing="8">
                <tr>
                    <td>Email</td><td><input type="text" name="uname"></td> 
                </tr>
                <tr>
                    <td>Password</td><td><input type="password" name="pass"></td>
                </tr>
                <tr>
                    <td><input type="submit" name="sub" value="Login">
                    </td>
                    
                    <td><a href="NewEntry.jsp" id="aa">New Customer? Register Now</a>
                    </td>
                </tr>
            </table>
        </form>
            
            

        
        
    </body>
</html>
