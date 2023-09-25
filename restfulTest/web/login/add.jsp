<%--
  Created by IntelliJ IDEA.
  User: brkim
  Date: 9/25/2023
  Time: 10:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.bean.Product" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<%--<%! List<String> list = new ArrayList<String>(); %>--%>
<%! List<Product> productList = new ArrayList<Product>(); %>
<jsp:useBean id="productInfo" class="com.bean.Product" />
<jsp:setProperty name="productInfo" property="*" />
<%
//    boolean init = (boolean) session.getAttribute("init");
//    if(init == false){
//        list.clear();
//        session.setAttribute("init", true);
//    }
//    request.setCharacterEncoding("utf-8");
//    String product = request.getParameter("product");
//    list.add(product);
//
//    for(int i =0; i < list.size(); i++){
//        out.write(list.get(i));
//    }
//    session.setAttribute("list", list);

    request.setCharacterEncoding("utf-8");
    productList.add(productInfo);
    for(int i = 0; i < productList.size(); i++){
        out.write(productList.get(i).print());
    }
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
<%--    <%=product %>--%>
</body>
</html>
