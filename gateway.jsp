<%-- 
    Document   : gateway
    Created on : 9 Jan, 2019, 6:01:06 PM
    Author     : Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Checking</title>
    </head>
    <body>
        <%
             try{
           
               Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shopkart","root","");
                int phns;
                String mail,pass,s; 
                mail=request.getParameter("uname");   
                pass=request.getParameter("pass");
                
                session.setAttribute("user", mail);
                
                s="select * from user where email='"+mail+"' and password='"+pass+"'";
                Statement st=con.createStatement();
                ResultSet rs=st.executeQuery(s);
                int flag=0;
                while(rs.next())
                {
                    flag=1;
                }
                if(flag==1)
                {
                    response.sendRedirect("home.jsp");
                }
                else
                {
                    response.sendRedirect("loginshop.jsp");
                }
             }
             catch(Exception e)
             {
                 out.println(e);
             }
             %>
    </body>
</html>
