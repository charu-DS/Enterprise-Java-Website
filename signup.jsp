<%-- 
    Document   : signup
    Created on : 7 Sep, 2022, 2:41:53 PM
    Author     : Charu Saraswat
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
       <div class="main center">
           <body>
                <%
    String user=request.getParameter("name");
  String pss1=request.getParameter("pass1");
  String pss2=request.getParameter("pass2");
  String email=request.getParameter("email");
  if(pss1.equals(pss2)){
       Class.forName("org.apache.derby.jdbc.ClientDriver");
       Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/javaproj","charu","123");
       PreparedStatement ps=con.prepareStatement("insert into CHARU values(?,?,?,?)");
       ps.setString(1,user );
       ps.setString(2,pss1);
       ps.setString(3,pss2 );
       ps.setString(4,email );
       ps.executeUpdate();
       response.sendRedirect("login.html");            
  }
  else{
      out.println("There's some problem in registration");
      
  }
    %>
           </body>
       </html>