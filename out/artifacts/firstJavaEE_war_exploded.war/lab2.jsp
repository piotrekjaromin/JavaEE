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

  Zad.1)Pelnoletnia kobieta:
  <br>
  <form action="/zad2_1" method="GET">
    <input type="text" name="imie" >
    <input type="number" name="wiek" >
    <input type="submit">
  </form>

  Zad.2)Papier kamien nozyce:
  <br>
  <form action="/zad2_2" method="GET">
    <input type="text" name="value" id="user">
    <input type="submit">
  </form>

  Zad.3a)Srednia liczb:
  <br>
  <form action="/zad2_3" method="GET">
    <input type="number" name="n1" id="n1">
    <input type="number" name="n2" id="n2">
    <input type="number" name="n3" id="n3">
    <input type="number" name="n4" id="n4">
    <input type="number" name="n5" id="n5">
    <input type="submit">
  </form>

  Zad.3b)Sortowanie liczb
  <br>
  <form action="/zad2_3" method="POST">
    <div id="insertNumber">
      <input type="text" name="zad3b" >
    </div>

    <button type='button' onclick="insert()">Add number</button><input type="submit">
  </form>

  Zad.4)
  <br>
  <form action="/zad2_4" method="POST">
    Rodzaj samochodu:
    <select name="typeOfCar">
        <option value="sportowy">sportowy</option>
        <option value="miejski">miejski</option>
        <option value="luksusowy">luksusowy</option>
      </select>

    Przedzial cenowy:
    <input type="text" name="priceFrom">
    <input type="text" name="priceTo">

    <input type="submit">
  </form>

  Zad.5)
  <br>
  <form action="/zad2_5" method="GET">

    Login: <input type="text" name="login">
    Password: <input type="password" name="password">

    <input type="submit" value="log in">
  </form>

  </body>
</html>
