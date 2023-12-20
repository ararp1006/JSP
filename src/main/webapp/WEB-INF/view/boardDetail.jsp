<%--
  Created by IntelliJ IDEA.
  User: aream
  Date: 2023-12-20
  Time: 오후 5:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <h2>글 상세 페이지</h2>
</head>
    <c:if test="${not empty post}">
    <h3>${post.title}</h3>
    <p>${post.content}</p>
    </c:if>

</script>

<form action="http://localhost:8080/boardList" method="get">
    <button type="submit">게시판으로 가기</button>
</form>
    </body>
</html>
