<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>글 목록</title>
</head>
<body>
<h2>글 목록</h2>

<ul>
    <c:forEach var="post" items="${postList}">
        <li><a href="/postDetail/${post.id}">${post.title}</a></li>
    </c:forEach>
</ul>
<form action="http://localhost:8080/board" method="get">
    <button type="submit">글쓰러 가기</button>
</form>
</body>
</html>
