<%--
  Created by IntelliJ IDEA.
  User: brkim
  Date: 9/22/2023
  Time: 2:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

<form action="registerProc.jsp" method="post">
    Name  : <input type="text" name="name"><br>
    Addr. : <input type="text" name="address"><br>
    <input type="checkbox" name="hobby" value="Baseball">Baseball</input>
    <input type="checkbox" name="hobby" value="Reading">Reading books</input>
    <input type="checkbox" name="hobby" value="Watching">Watching movies</input><br>
    <input type="submit" value="Send">
</form>

</body>
</html>
