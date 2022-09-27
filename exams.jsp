<%-- 
    Document   : exams
    Created on : 4 Sep, 2022, 4:42:13 PM
    Author     : Charu Saraswat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exams</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Rancho&effect=shadow-multiple">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Rancho&effect=shadow-multiple|3d">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Rancho&effect=shadow-multiple|fire-animation">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Rancho&effect=shadow-multiple|shadow-multiple">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Rancho&effect=shadow-multiple|emboss">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Rancho&effect=shadow-multiple|anaglyph">
        <style>
               .column {
             float: left;
              width: 50%;
            }
            body{
               
                background-repeat: no-repeat;
                background-size: cover;
            }
        </style>
    <header>
        <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand font-effect-fire-animation" href="#" style="font-weight: bold;">Study Management</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="index.html">Home</a></li>
     
      <li><a href="exams.jsp">Exams</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="signup.html"><span class="glyphicon glyphicon-user"></span> Sign Up new account </a></li>
      <li><a href="logout.html"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
    </ul>
  </div>
</nav>
    </header>
    </head>
    <body style="background-image: url('https://images.unsplash.com/photo-1553095066-5014bc7b7f2d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8d2FsbCUyMGJhY2tncm91bmR8ZW58MHx8MHx8&w=1000&q=80');">
      
        <div class="container">
  <div class="row" style="margin-top:160px; background-image:url('https://img.freepik.com/free-vector/hand-painted-watercolor-pastel-sky-background_23-2148902771.jpg?w=2000'); border-color: black; padding: 40px; font-size:17px; border-radius: 10px;">
   
      <div class="column font-effect-shadow-multiple" ><h4>Exams from HackerRank</h4></div>
      <div class="column font-effect-shadow-multiple"><h4>Exams from Linkedln</h4></div>
      
    <div class="w-100"></div>
  
    <div class="column font-effect-anaglyph">
      Basics Exams
      <br><a href="https://www.hackerrank.com/skills-verification/java_basic" class="btn btn-info btn-sm" style="color: #F08080; margin-bottom:8px;" target="_blank">Java </a>
      <a href="https://www.hackerrank.com/skills-verification/javascript_basic" class="btn btn-info btn-sm" style="margin-bottom:8px; color: #F08080;" target="_blank">JS</a>
      <a href="https://www.hackerrank.com/skills-verification/python_basic" class="btn btn-info btn-sm" style="margin-bottom:8px; color: #F08080;" target="_blank">Python </a>
       <a href="https://www.hackerrank.com/skills-verification/sql_basic" class="btn btn-info btn-sm" target="_blank" style="color: #F08080; margin-bottom:8px;">SQL</a>
       <br>
       Intermediate Exams<br>
       <a href=https://www.hackerrank.com/skills-verification/javascript_intermediate" class="btn btn-info btn-sm" target="_blank" style="color: #F08080;"> JS </a>
       <a href="https://www.hackerrank.com/skills-verification/sql_intermediate" class="btn btn-info btn-sm" target="_blank" style="color: #F08080;">SQL</a>
       <a href="https://www.hackerrank.com/skills-verification/r_intermediate" class="btn btn-info btn-sm" target="_blank" style="color: #F08080;">R </a>
       <a href="https://www.hackerrank.com/skills-verification/problem_solving_intermediate" class="btn btn-info btn-sm" target="_blank" style="color: #F08080;">Problem Solving</a>
   </div>
    <div class="column font-effect-anaglyph" >
        Exams<br>
        <a href="https://www.linkedin.com/skill-assessments/Django/quiz-intro/" class="btn btn-info btn-sm" style="margin-bottom:8px; color: #F08080;" target="_blank">Django</a>
        <a href="https://www.linkedin.com/skill-assessments/JavaScript/quiz-intro/" class="btn btn-info btn-sm" style="margin-bottom:8px;color: #F08080;" target="_blank">JavaScript</a><br>
        <a href="https://www.linkedin.com/skill-assessments/Google%20Analytics/quiz-intro/" class="btn btn-info btn-sm" style="margin-bottom:8px;color: #F08080;" target="_blank">Google Analytics</a>
        <a href="https://www.linkedin.com/skill-assessments/Transact-SQL%20(T-SQL)/quiz-intro/"  class="btn btn-info btn-sm" style="margin-bottom:8px; color: #F08080;" target="_blank">Transact SQL</a>
    </div>
  
    
    <div class="column font-effect-anaglyph" >
        <br>
      Go to my <a href="https://www.linkedin.com/feed/" class="btn btn-dark" target="_blank" style="text-decoration: none; color: white; background-color:black; "> Linkedln<a/>
     
    </div>
  </div>
</div>
    </body>
</html>
