<%--
  Created by IntelliJ IDEA.
  User: brkim
  Date: 9/25/2023
  Time: 10:54 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List" %>
<%@ page import="com.bean.Product" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%
//    List<String> list = (List<String>) session.getAttribute("list");
//    for(int i = 0; i < list.size(); i++){
//        out.write(list.get(i) + '\n');
//    }
//    session.setAttribute("init", false);

    List<Product> productList = (List<Product>) session.getAttribute("productList");

    int total = 0;
    int cnt = 0;
    for(int i = 0; i < productList.size(); i++){
        Product product = productList.get(i);
        out.write(product.print() + '\n');
        total +=  product.getPrice() * product.getAmount();
        cnt += product.getAmount();
    }
    out.println("<br> Total Price is " + total + ".");
    out.println("<br> Total Amount is " + cnt + ". <br>");
    productList.clear();
    session.setAttribute("productList", productList);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Title</title>
</head>
<body>
    <a href="javascript:history.back()">Back</a>
</body>
</html>
