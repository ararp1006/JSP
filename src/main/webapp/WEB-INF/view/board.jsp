<%--
  Created by IntelliJ IDEA.
  User: aream
  Date: 2023-12-20
  Time: 오후 4:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>글쓰기</title>
</head>
<body>
<h2>글 쓰기</h2>
<form action="/submitPost" method="post">
    <label for="title">제목:</label>
    <input type="text" id="title" name="title" required>
    <br>

    <label for="content">내용:</label>
    <textarea id="content" name="content" rows="4" cols="50" required></textarea>
    <br>

    <button type="submit">저장</button>
</form>
</body>
</html>
