<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 8/16/2023
  Time: 8:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/save" method="post">
    <input type="checkbox" id="1" name="condiment" value="Lettuce">
    <label for="1"> Lettuce</label>
    <input type="checkbox" id="2" name="condiment" value="Tomato">
    <label for="2"> Tomato</label>
    <input type="checkbox" id="3" name="condiment" value="Mustard">
    <label for="3"> Mustard</label>
    <input type="checkbox" id="4" name="condiment" value="Sprouts">
    <label for="4"> Sprouts</label><br>
    <input type="submit" value="Save">
</form>

<h2>Selected: ${condiment}</h2>


</body>
</html>
