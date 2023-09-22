<%@ page import="com.bean.Board" %>
<%@ page import="com.bean.BoardDao" %><%--
  Created by IntelliJ IDEA.
  User: brkim
  Date: 9/22/2023
  Time: 4:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<%
    request.setCharacterEncoding("utf-8");

    //1.
//    Board board = new Board();
//    board.setTitle(request.getParameter("title"));
//    board.setWriter(request.getParameter("writer"));
//    board.setContents(request.getParameter("contents"));
%>
<%--2. 위에처럼 해줘도 되고, 아래처럼 해도되고 --%>
<jsp:useBean id="board" class="com.bean.Board"/>
<jsp:setProperty name="board" property="*" />
<%
    BoardDao dao = new BoardDao();
    dao.insertBoard(board);
%>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
