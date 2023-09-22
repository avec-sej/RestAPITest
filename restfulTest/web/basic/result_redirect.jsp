<%--
  Created by IntelliJ IDEA.
  User: brkim
  Date: 9/22/2023
  Time: 10:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@page import="java.net.URLDecoder" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String userName = request.getParameter("userName");
    String decodeName = URLDecoder.decode(userName, "utf-8");
%>
Redirector <br>
Result : <b>${param.result}</b><br>
Name   : <b><%=decodeName%></b>
<%--${param.userName}--%>
</body>
</html>
