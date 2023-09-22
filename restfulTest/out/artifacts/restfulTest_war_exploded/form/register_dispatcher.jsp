<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: brkim
  Date: 9/22/2023
  Time: 3:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <h3>회원가입내역</h3>
    이름 : ${name}<br>
    주소 : ${address}<br>
    취미 : <%=Arrays.toString((String[])request.getAttribute("hobby"))%>;
</br></br>

</body>
</html>
