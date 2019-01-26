<%-- 
    Document   : NewEntry
    Created on : Nov 28, 2018, 3:54:04 PM
    Author     : Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New customer entry</title>
        
        <style>
body
{
    background-image: url(image/logIn_1.jpg);
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
		<li> <a href="men.jsp">Men </a></li>
		<li> <a href="women.jsp">Women </a></li>
		<li> <a href="kids.jsp">Kid </a></li>
                <li><a href="accessories.jsp">Accessories</a></li>
		
	</ul>
	</div>
</div>
        
      
        <form name="f1" action="http://localhost:8084/Shopkart/shop" method="post">
            <table bgcolor="white" border="0" align="center" cellpadding="8" cellspacing="8">
                <tr>
                    <td>Email</td><td><input type="email" name="em"></td>
                </tr>
                
                <tr>
                <td>Password</td><td><input type="password" name="ps"></td>
                </tr>
                 
                <tr>
                  <td>Phone</td><td><input type="text" name="phn"></td>
                </tr>
                     
                <tr>
                  <td>Address</td><td><input type="text" name="addr"></td>
                </tr>
                
                <tr>
                  <td>Gender</td><td><input type="radio" name="gen" value="male">Male
                        <input type="radio" name="gen" value="female">Female</td>
                </tr>
              
                <tr>
                    <td colspan="2" align="center" bgcolor="yellow"><input type="submit" name="sub" value="ok"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
