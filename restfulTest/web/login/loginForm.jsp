<%--
  Created by IntelliJ IDEA.
  User: brkim
  Date: 9/25/2023
  Time: 10:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Title</title>
</head>
<body>
<%
    session.setAttribute("init", true);
%>
    <form action="loginProc.jsp" method="post">
        ID : <input type="text" name="id"><br>
        PW : <input type="text" name="pass"> <br>
        <input type="submit" value="Login">
    </form>
</body>
</html>
