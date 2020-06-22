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
        
        <%
        String name = request.getParameter("l1"),name1 ,pwd = request.getParameter("l2"),pwd1;
        int count=0;
        
            
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection com = DriverManager.getConnection("jdbc:mysql://localhost:3306/my_project","root","");
        Statement st = com.createStatement();
        ResultSet rs = st.executeQuery("select * from Website");
        while (rs.next())
        {
            name1=rs.getString("user");
            pwd1 = rs.getString("pass");
            if (name.equals(name1)&&pwd.equals(pwd1))
                
            {
                count++;
            }
        }
                 if (count==0)
                 {
                     out.println("invalid");
                 }
              else
                 {
                     out.println("welcome member");
                 }
        
       
      
                
                %>
                


    </body>
</html>
