<%--
  Created by IntelliJ IDEA.
  User: brkim
  Date: 9/22/2023
  Time: 4:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="insert_action.jsp" method="post">
    Writer   : <input type="text" name="writer"><br>
    Title    : <input type="text" name="title"><br>
    Contents : <br>
    <textarea name="contents" cols="70" rows="6"></textarea>
    <br>
    <input type="submit" value="submit">
</form>

</body>
</html>
