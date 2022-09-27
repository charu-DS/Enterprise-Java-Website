<%-- 
    Document   : addsubject
    Created on : 8 Sep, 2022, 4:20:05 PM
    Author     : Charu Saraswat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Subject</title>
  
    </head>
    <body>
        
                    
         <%
         Class.forName("org.apache.derby.jdbc.ClientDriver");
         Connection c=DriverManager.getConnection("jdbc:derby://localhost:1527/javaproj","charu","123");
         
     //insert data of add course to ADDSUB table
     Statement stmt=c.createStatement();
      if(request.getParameter("addsub")!=null){
     String subname=request.getParameter("subname");
     String sstr=request.getParameter("substr");
     String y=request.getParameter("y");
     String hrs=request.getParameter("hrs");
     String  imp=request.getParameter("imp");
    
     PreparedStatement ps=c.prepareStatement("insert into ADDSUB values(?, ?, ?, ?, ?)");
     ps.setString(1,subname);
     ps.setString(2,sstr);
     ps.setString(3,y);
     ps.setString(4,hrs);
     ps.setString(5,imp);
     ps.executeUpdate();
  response.sendRedirect("addsubject.html");  
     ps.close(); 
      }
       if(request.getParameter("updatesub")!=null){
          String subname=request.getParameter("subname");
          String sstr=request.getParameter("substr");
          String y=request.getParameter("y");
          String hrs=request.getParameter("hrs");
          String imp=request.getParameter("imp");
          
     PreparedStatement ps=c.prepareStatement("update ADDSUB set substrength=?, ytostudy=?, timereq=?, imp=? where name=?");
     ps.setString(5,subname);
     ps.setString(1,sstr);
     ps.setString(2, y);
     ps.setString(3, hrs);
     ps.setString(4, imp);
     ps.executeUpdate();
    
    response.sendRedirect("addsubject.html");
       }
         if(request.getParameter("deletesub")!=null){
     String name=request.getParameter("subname");

     PreparedStatement ps=c.prepareStatement("delete from ADDSUB where name=? ");
     ps.setString(1, name);
     ps.executeUpdate();
     response.sendRedirect("addsubject.html");
     ps.close(); 
 }

     c.close();
 
            %>
    </body>
</html>
