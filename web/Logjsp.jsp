
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
        String  user;
        String pass;
        user = (request.getParameter("l1"));
        pass = (request.getParameter("l2"));
        
                                                                                           
       // if(user != "" && pass != "" ) 
        //{
            if(user.equals("vaibhav") && pass.equals ("12345"))
            {
         out.println("you have successfully login");
            }
  
        //}
        else
        {
                out.println("invalid");
                
          }
        
         %>   
         
        
       </body> 
    </html>
