<%@ page import="java.net.URLDecoder" %><%--
  Created by IntelliJ IDEA.
  User: brkim
  Date: 9/25/2023
  Time: 10:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%
    Cookie[] cookies = request.getCookies();
    String name = "";
    boolean find = false;

    if(cookies != null){
        for(int i = 0; i < cookies.length; i++){
            if(cookies[i].getName().equalsIgnoreCase("name")){
                name = URLDecoder.decode(cookies[i].getValue(), "utf-8");
                find = true;
                break;
            }
        }
    }

    if(find != true){
        response.sendRedirect("loginForm.jsp");
    }
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Title</title>
</head>
<body>

<div align="center">
    <b>Welcome, <%= name %></b>
    <a href="logout.jsp">Log out</a>
    <HR>
    <H2>Select a Product</H2>
    <form action="add.jsp" name="form1" method="post">
        <SELECT name="product">
            <option>Apple</option>
            <option>Tangerine</option>
            <option>Pineapple</option>
            <option>Grapefruit</option>
            <option>Lemon</option>
        </SELECT>
        <br>
        Price per a piece : <input type="text" name="price"> <br>
        Amount            : <input type="text" name="amount"> <br>
        <input type="submit" value="ADD">
    </form>
    <a href="checkOut.jsp">Pay</a>
</div>

</body>
</html>
