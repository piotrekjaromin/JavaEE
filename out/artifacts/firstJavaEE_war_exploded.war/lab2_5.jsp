<%--
  Created by IntelliJ IDEA.
  User: piotrek
  Date: 04.03.16
  Time: 09:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <title>$Title$</title>
    <script>
        var counter = 0;
        function insert(){
            $('#insertNumber').append(" <input type='text' name='zad3b_"  + counter + "'>");
            counter = counter + 1;
        }
    </script>

</head>
<body>


<form action="/zad2_5" method="POST">
   Name: <input type="text" name="name" id="name">
   Mail: <input type="text" name="mail" id="mail">
   Comment: <input type="text" name="comment" id="comment">
    <input type="submit">
</form>



</body>
</html>

