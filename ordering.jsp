<%-- 
    Document   : ordering
    Created on : 14 Dec, 2018, 5:00:37 PM
    Author     : Student
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Your Order</title>
    </head>
    <body>
        <%
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shopkart","root","");
                int q;
                String pt,b,s;
                pt=request.getParameter("ptype");
                b=request.getParameter("brand");
                q=Integer.parseInt(request.getParameter("quan"));
                s="insert into order values('"+pt+"','"+b+"',"+q+")";
                Statement st=con.createStatement();
                st.executeUpdate(s);
                response.sendRedirect("payment.jsp");
            }
            catch(Exception e)
            {
                out.println(e);
            }
            %>
    </body>
</html>
