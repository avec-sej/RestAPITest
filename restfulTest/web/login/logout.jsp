<%--
  Created by IntelliJ IDEA.
  User: brkim
  Date: 9/25/2023
  Time: 10:19 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>\

<%
    Cookie[] cookies = request.getCookies();
    boolean find = false;
    if(cookies != null){
        for(int i = 0; i < cookies.length; i++){
            if(cookies[i].getName().equalsIgnoreCase("name")){
                cookies[i].setMaxAge(0);
                response.addCookie(cookies[i]);
                find = true;
                break;
            }
        }
    }

    if(find == true){
        response.sendRedirect("loginForm.jsp");
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>

</body>
</html>
