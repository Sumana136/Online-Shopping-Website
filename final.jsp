<%-- 
    Document   : final
    Created on : 26 Dec, 2018, 5:28:22 PM
    Author     : Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Final confirmation</title>
       
           
    </head>
    <body>
        
        <%  String se=session.getAttribute("user").toString(); 
            %>
           
        <%
            try{
           
               Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shopkart","root","");
                int phns;
                String p,b,pm,addr,st,dt;
                int q;
                double pr;                    
                p=request.getParameter("ptype");
                b=request.getParameter("brand");
                q=Integer.parseInt(request.getParameter("qnt"));  
                pm=request.getParameter("pay");
                dt=request.getParameter("od");
                pr=Double.parseDouble(request.getParameter("prc"));
                addr=request.getParameter("del");
                st="Done";             
                String s="insert into cusentry (email,Product_type,brand,Quantity,payment_mode,odate,price,addr,status)values('"+se+"','"+p+"','"+b+"',"+q+",'"+pm+"','"+dt+"',"+pr+",'"+addr+"','"+st+"')";
                Statement stm=con.createStatement();
                stm.executeUpdate(s);
                response.sendRedirect("confirm.jsp");
                
        }
        
        catch(Exception e)
            {
                out.println(e);
            }
            %>
    </body>
</html>
