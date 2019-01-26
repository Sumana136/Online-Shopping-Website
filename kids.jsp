<%-- 
    Document   : women
    Created on : Dec 5, 2018, 4:33:48 PM
    Author     : Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Kids Fashion</title>
        
         <style>
body
{
   
}

#header
{	
	width:100%;
	height:60px;
	background-color:purple;
}

#menu
{
	float:right;
}

#cont
{
	float:left;
	//border:2px solid red;
	width:160px;
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

/* a:hover{
    font-size: 20px;
    text-decoration: underline;
    text-decoration-color: red;
} */

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
table{
    padding-top: 5px;
}
</style>
    </head>
    <body>
       <div id="header">
        
	<div id="cont">
	<input type="text" name="search" placeholder="Search">
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
               <a href="order.jsp"><img src="kids9.jpg" height="280" width="100%" id="link"/></a>
               
           </div>
        <br>
        <div id="part2">
            <table border="0">
                <tr>
                    <td width="300" height="230"><a href="order.jsp"><img src="kids3.jpg" width="620" height="230" id="link"/></a></td>
                    <td width="301" height="230"><a href="order.jsp"><img src="kids4.jpg" width="400" height="230" id="link"/></a></td>
                    <td width="302" height="230"><a href="order.jsp"><img src="kids5.jpg" width="300" height="230"  id="link"/></a></td>
                    
                </tr>
            </table>
                <br>
        <div id="part3">
            <table border="0">
                <tr>
                    <td width="300" height="230"><a href="order.jsp"><img src="kids2.jpg" width="300" height="230" id="link"/></a></td>
                    <td width="301" height="230"><a href="order.jsp"><img src="kids7.jpg" width="400" height="230" id="link"/></a></td>
                    <td width="302" height="230"><a href="order.jsp"><img src="kids6.jpg" width="620" height="230"  id="link"/></a></td>
                    
                </tr>
            </table>
        </div>
        <br>
               
            
        </div>
           
           
           





<table>


</table>
    </body>
</html>
