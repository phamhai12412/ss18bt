<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 8/16/2023
  Time: 9:05 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/result" method="post">
  <input type="number" name ="num1" placeholder="number 1">
  <input type="number" name ="num2" placeholder="number 2"><br>
  <button type="submit" name="operator" value="add">Add(+)</button>
  <button type="submit" name="operator" value="sub">Sub(-)</button>
  <button type="submit" name="operator" value="mul">Mul(*)</button>
  <button type="submit" name="operator" value="div">Div(/)</button>
</form>
<h2>Result ${operator}: ${result}${error}</h2>
</body>
</html>
