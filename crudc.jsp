<%-- 
    Document   : addsubject
    Created on : 8 Sep, 2022, 4:20:05 PM
    Author     : Charu Saraswat
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Course</title>     
   
    </head>
    <body>
                     
         <%
         Class.forName("org.apache.derby.jdbc.ClientDriver");
         Connection c=DriverManager.getConnection("jdbc:derby://localhost:1527/javaproj","charu","123");
          String name=request.getParameter("cname");
     String platform=request.getParameter("cstr");
     String yst=request.getParameter("yst");
     String hrs=request.getParameter("hrs");
     String remark=request.getParameter("remark");
     String actl=request.getParameter("actl");
         
     //insert data of add course to ADDSUB table
     Statement stmt=c.createStatement();
      if(request.getParameter("addcourse")!=null){
    
    
     PreparedStatement ps=c.prepareStatement("insert into ADDCOURSE values(?, ?, ?, ?, ?,?)");
     ps.setString(1,name);
     ps.setString(2,platform);
     ps.setString(3,yst);
     ps.setString(4,hrs);
     ps.setString(5,remark);
     ps.setString(6,actl);
     ps.executeUpdate();
  response.sendRedirect("addcourse.html");  
     ps.close(); 
      }
       if(request.getParameter("updatecourse")!=null){
         
     PreparedStatement ps=c.prepareStatement("update ADDCOURSE set platform=?, ytostudy=?, time=?, remark=?, learntornot=? where name=?");
     ps.setString(6,name);
     ps.setString(1,platform);
     ps.setString(2, yst);
     ps.setString(3, hrs);
     ps.setString(4, remark);
      ps.setString(5, actl);
     ps.executeUpdate();
    
    response.sendRedirect("addcourse.html");
       }
         if(request.getParameter("deletecourse")!=null){

     PreparedStatement ps=c.prepareStatement("delete from ADDCOURSE where name=? ");
     ps.setString(1, name);
     ps.executeUpdate();
     response.sendRedirect("addcourse.html");
     ps.close(); 
 }

     c.close();
 
            %>
    </body>
</html>
