<%@ page import="java.net.URLEncoder" %><%--
  Created by IntelliJ IDEA.
  User: brkim
  Date: 9/25/2023
  Time: 10:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%
    String m_id = "asdf";
    String m_pass = "1234";

    String id = request.getParameter("id");
    String pass = request.getParameter("pass");

    String m_name = "Amy";
    String name = URLEncoder.encode(m_name, "utf-8");

    if(id.equalsIgnoreCase(m_id) && pass.equalsIgnoreCase(m_pass)){
        Cookie cookie = new Cookie("name", name); // 쿠키생성
        response.addCookie(cookie); // 생성된 쿠키를 클라이언트에 전달
    }else{
        response.sendRedirect("loginForm.jsp");
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <a href="main.jsp">Main Page</a>
</body>
</html>
