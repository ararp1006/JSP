<%--
  Created by IntelliJ IDEA.
  User: aream
  Date: 2023-12-20
  Time: 오후 3:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>home</title>
</head>
<body>
<h1>Jsp를 이용한 간단한 게시판</h1>

<form action="http://localhost:8080/boardList" method="get">
    <button type="submit">게시판</button>
</form>

<form action="http://localhost:8080/board" method="get">
    <button type="submit">글쓰기</button>
</form>
</body>
</html>
