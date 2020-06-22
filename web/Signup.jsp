<%-- 
    Document   : Signup
    Created on : Jun 18, 2020, 2:14:25 PM
    Author     : vaibhav
--%>



<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>                                                          
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        <%        
            String user = request.getParameter("user");
            String pass= request.getParameter("pass");
            
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/my_project","root","");
                Statement stmt = con.createStatement();
                String s = "insert into Website(user,pass) values('"+user+"','"+pass+"')";
                stmt.executeUpdate(s);
                response.sendRedirect("Signup.html");
                
            }catch(Exception e){}
            
            %>
            <a href ="users.jsp">see list</a>
            
            
</body>
            
                

      
            
</html>
