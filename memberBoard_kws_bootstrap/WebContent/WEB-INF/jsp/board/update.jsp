<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="dao.BoardDao" %>
<%@ page import="vo.Board" %>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../common/head.jsp"></jsp:include>
<style>
.detail table {width: 80%; margin: 40px auto; border-collapse: collapse;}
.detail td {padding : 8px; border-top : 3px solid #bbb;  border-bottom: 3px solid #bbb;}
.detail textarea {width: 100%; height: 300px;}
.detail button {float: right; margin: 10px;}
</style>
</head>
<body>
<jsp:include page="../common/nav.jsp"/>
<main class="detail">
<form method="post">
	<input type="hidden" name="id" value="${board.id}">
<table>
	<h2>글 수정</h2>
	<tr>
		<td><input class="form-control" type="text" name="title" value="${board.title}" placeholder="제목을 입력해주세요."></td>
	</tr>
<!-- 	<tr> -->
<!-- 		<td><input type="file" name="file1"></td> -->
<!-- 	</tr> -->
<!-- 	<tr> -->
<!-- 		<td><input type="file" name="file2"></td> -->
<!-- 	</tr> -->
<!-- 	<tr> -->
<!-- 		<td><input type="file" name="file3"></td> -->
<!-- 	</tr> -->
	<tr>
		<td><textarea name="content" placeholder="글을 입력해주세요." class="form-control"><c:out value="">${board.content}</c:out></textarea></td>
	</tr>
	<tr>
		<td>
			<a href="${pageContext.request.contextPath}/board/list">
				<button>취소</button>
			</a>
			<a href="${pageContext.request.contextPath}/board/list">
				<button>수정</button>
			</a>
		</td>
	</tr>
</table>
</form>
</main>
<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>