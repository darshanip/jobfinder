
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP Page</title>
    </head>
    <body>
        <%
       String name=request.getParameter("name");
       String email=request.getParameter("email");
       String subject=request.getParameter("subject");
       String message=request.getParameter("message");
      
       
       try{  
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/jobfinder","root","");  
Statement stmt=con.createStatement();  
String s="insert into contact(name,email,subject,contact)values('"+name+"','"+email+"','"+subject+"','"+message+"')" ;
stmt.executeUpdate(s);
out.println("successfull");
con.close();  
}catch(Exception e){ System.out.println(e);}
        
        
        
        %>
    </body>
</html>
