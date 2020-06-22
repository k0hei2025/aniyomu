<%-- 
    Document   : users
    Created on : Jun 22, 2020, 11:10:03 AM
    Author     : vaibhav
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Show</title>
    </head>
    <body>
        <table>
        <%
        String name , pwd;
        
            
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection com = DriverManager.getConnection("jdbc:mysql://localhost:3306/my_project","root","");
        Statement st = com.createStatement();
        ResultSet rs = st.executeQuery("select * from Website");
        while (rs.next())
        {
            name=rs.getString("user");
            pwd = rs.getString("pass");
            
        
        
                %>
    <tr><td> <%=name%></td><td><%=pwd%></td></tr>
    <%}%>
        
                
</table>
<a href ="index.html">home</a>
    </body>
</html>
