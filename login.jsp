<%-- 
    Document   : login
    Created on : 7 Sep, 2022, 7:39:51 PM
    Author     : Charu Saraswat
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
         <!-- Font Icon -->
    <link rel="stylesheet" href="css/fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="css/css/style.css">
   
    </head>
    <body>
       <%
  String uname=request.getParameter("name");
  String pwd1=request.getParameter("pass1");
  String pwd2=request.getParameter("pass2");
  if(pwd1.equals(pwd2)){
       Class.forName("org.apache.derby.jdbc.ClientDriver");
       Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/javaproj","charu","123");
       PreparedStatement ps=con.prepareStatement("select * from CHARU where name like '"+uname+"'");
       ResultSet rs=ps.executeQuery();
       while(rs.next()){
           if(rs.getString(1).equals(uname)&& rs.getString(2).equals(pwd1)){
              
                response.sendRedirect("index.html");  
           }
           else{
               request.setAttribute("alertMsg", "Please check your credentials");
               String message = (String)request.getAttribute("alertMsg");
               //out.println("Please recheck your details");
           }
       }
  }
  else{
      out.println("Password doesn't match!");
  }
    %>
    </body>
</html>
