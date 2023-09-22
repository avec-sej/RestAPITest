<%--
  Created by IntelliJ IDEA.
  User: brkim
  Date: 9/22/2023
  Time: 3:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%
    request.setCharacterEncoding("utf-8");

    String name = request.getParameter("name");
    String address = request.getParameter("address");
    String arr[] = request.getParameterValues("hobby");

    request.setAttribute("name", name);
    request.setAttribute("address", address);
    request.setAttribute("hobby", arr);
%>
<%--dispatcher--%>
<%--이 페이지는 없어도 되기는 함. 전형적으로 조건에 따라 이동할 페이지를 지정할 때 중간다리 역할로 사용함--%>
<jsp:forward page="register_dispatcher.jsp" />
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
