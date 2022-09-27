<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Study for College</title>
    </head>
    <body>
        <form>
             
            <p>Name of subject <input type="text" name="sub1"> </p> 
            <p>To do: </p>
            Practicals <input type="checkbox" name="Practicals" value="Practicals">
            Sem Exam Prep<input type="checkbox" name="Sem Exam" value="Sem Exam">
           Project <input type="checkbox" name="Project" value="Project">
            <p>Mode: </p>
           Easy <input type="radio" name="mode" >
           Hard <input type="radio" name="mode" >
            <p>Time required overall 
            <input type="text" name="timereq"> </p>
            <p>Extra Note:  <input type="text"  name="extranote"> </p>
            <input type="button" name="addsubj" value="Add Subject">
        </form>
    </body>
</html>
