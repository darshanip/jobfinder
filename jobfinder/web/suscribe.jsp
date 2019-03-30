
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP Page</title>
    </head>
    <body>
        <%
       String email=request.getParameter("email");
       try{  
Class.forName("com.mysql.jdbc.Driver");  
Connection con=DriverManager.getConnection(  
"jdbc:mysql://localhost:3306/jobfinder","root","");  
Statement stmt=con.createStatement();  
String s="insert into suscribe(email)values('"+email+"')" ;
stmt.executeUpdate(s);
out.println("successfull");
con.close();  
}catch(Exception e){ System.out.println(e);}
        
        
        
        %>
    </body>
</html>
