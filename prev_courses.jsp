<%-- 
    Document   : prev_courses
    Created on : 4 Sep, 2022, 4:29:40 PM
    Author     : Charu Saraswat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <style>
            body{
                background-image: url('https://cdn.pixabay.com/photo/2016/05/05/02/37/sunset-1373171__480.jpg');
                background-repeat: no-repeat;
                background-size: cover; 
            }
        table{
            margin-top:40px;
            background-color:#3A3A38;
            border-color: black;
            border-width: 2px;
          
        }
        th{
            background-color:#F08080;
            padding:5px;
            border-width: 2px;
           
        }
        td{
            background-color:#E7C4C4;
             border-width: 2px;
              padding:5px;
        }
        
        </style>
    </head>
    <body>
        <nav class="navbar navbar-inverse">
  <div class="container-fluid  flex-container"  style=" display: flex; background-color:  #000000; border-radius: 5px;">
    <div class="navbar-header" style="padding-top:12px;">
       <ul class="nav navbar-nav flex-container"style=" display: flex; list-style: none; padding:1px 20px; margin-top:5px; ">
      <a class="navbar-brand font-effect-fire-animation" href="#" style="color:white; font-weight: bold; margin-bottom:5px;
         padding-top:2px;text-decoration: none; margin-left:7px; margin-right: 780px;">Study Management</a>
         
      <li class="active"><a href="index.html"style="color:white; text-decoration: none; margin-right: 22px; margin-top:14px; ">Home</a></li>
      <li><a href="addcourse.html" style="color:white; text-decoration: none;  margin-right: 25px; margin-top:14px; ">CRUD Course </a>
     
      <li><a href="exams.jsp"style="color:white; text-decoration:none; margin-right: 22px; margin-top:14px; padding-top:2px;">Exams</a></li>
        </ul>
    </div>

  </div>
</nav>
        <%
          Class.forName("org.apache.derby.jdbc.ClientDriver");
          Connection c=DriverManager.getConnection("jdbc:derby://localhost:1527/javaproj","charu","123");
          Statement stmt=c.createStatement();
   
          ResultSet rs=stmt.executeQuery("Select * from ADDCOURSE");
         out.println("<table border=1 cellspacing=5 cellpadding=10 align= center><tr> <th colspan=5>COURSE INFORMATION</th></tr><tr><th>Course Name</th><th>Course Platform</th><th>Why to Study?</th><th>Hours</th><th>Remark</th><th>Understood?</th></tr>");
         while(rs.next()){
             String cname=rs.getString(1);
             String cstr=rs.getString(2);
             String yst=rs.getString(3);
             String hrs=rs.getString(4);
             String remark=rs.getString(5);
             String actl=rs.getString(6);
             out.println(
               "<tr><td>"+cname+ "</td><td>" + cstr+"</td><td>"+yst+"</td><td>"+hrs+"</td><td>"+remark+"</td><td>"+actl+"</td></tr>");
         }
         out.println("</table>");
//         Dynamice creation
         rs.close();
     
     
     
         stmt.close();
         c.close();
         %>
    </body>
</html>
