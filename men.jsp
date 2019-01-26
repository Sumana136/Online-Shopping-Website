<%-- 
    Document   : men
    Created on : 24 Dec, 2018, 3:28:56 PM
    Author     : Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Men Style</title>
    </head>
    <body>
        <style>
body
{
   
}

#header
{	
	width:100%;
	height:60px;
	background-color:blue;
}

#menu
{
	float:right;
}

li{
	list-style-type:none;
	display:inline;
	padding:25px;
}
#wel{color: white;}

a{
	color:white;
	font-size:17px;
	text-decoration:none;	
}

/*a:hover{
    font-size: 20px;
    text-decoration: underline;
    text-decoration-color: red;
}*/

#part1
{
    width: 100%;
    height:280px;
    //border: 1px solid green;
    //position: fixed;
    
}

#part2
{
    width: 100%;
    height:250px;
    //border: 1px solid red;
}

#part3
{
    width: 100%;
    height:300px;
    //padding-top: -50px;
}
table{
    padding-top: 5px;
}


</style>
    </head>
    <body>
       <div id="header"><%  String se=session.getAttribute("user").toString(); 
            %>
        
	<div id="cont">
	<a href="loginshop.jsp">Login</a>
        &nbsp;&nbsp;&nbsp;&nbsp;<a href="cart.jsp">Cart</a> &nbsp;&nbsp;&nbsp;&nbsp; <a id="wel">Welcome &nbsp;&nbsp;<%=se%></a>
       
       
	</div>
        
	<div id="menu">
	<ul>
		<li><a href="home.jsp">Home</a></li>
		<li> <a href="men.jsp">Men </a></li>
		<li> <a href="women.jsp">Women </a></li>
		<li> <a href="kids.jsp">Kid </a></li>
                <li><a href="accessories.jsp">Accessories</a></li>
		
	</ul>
	</div>
        </div>
           <div id="part1">
               <a href="order.jsp"><img src="men14.jpg" height="300" width="100%" id="link"/></a>
               
           </div>
        <br>
        <div id="part2">
            <table border="0">
                <tr>
                    <td width="300" height="210"><a href="order.jsp"><img src="men2.jpg" width="300" height="230" id="link"/></a></td>
                    <td width="301" height="210"><a href="order.jsp"><img src="men15.jpg" width="400" height="230" id="link"/></a></td>
                    <td width="302" height="210"><a href="order.jsp"><img src="men8.jpg" width="620" height="230" id="link" /></a></td>
                    
                </tr>
                
            </table>
            
        </div>
        <div id="part3">
            <a href="order.jsp"><img src="men12.jpg" height="300" width="100%" id="link"/></a>
        </div>
        <br>
        

    </body>
</html>
