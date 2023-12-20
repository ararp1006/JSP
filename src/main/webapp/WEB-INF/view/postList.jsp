<%--
  Created by IntelliJ IDEA.
  User: aream
  Date: 2023-12-20
  Time: 오후 6:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>글목록</title>
</head>
<body>
<h2>글 목록</h2>

<ul id="postList">
  <c:forEach var="post" items="${postList}">
    <li class='post-link' data-post-id='${post.id}' data-title='${post.title}'>
        ${post.title}
    </li>
    <hr>
  </c:forEach>
</ul>

<form action="http://localhost:8080/getPosts" method="get">
  <button type="submit">글쓰러 가기</button>
</form>
</body>
</html>
