<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<jsp:include page="../common/head.jsp" />
</head>
<body class="d-flex flex-column h-100">
	<!-- Navigation-->
	<jsp:include page="../common/nav.jsp" />
	<!-- Page Content-->
	<main class="list">
	<div class="container">
		<c:set var="endCount" value="${page.cri.amount - (page.cri.amount-1)%3+2}" />
		<c:forEach begin="1" end="${endCount}" varStatus="stat">
			<c:set var="board" value="${list[stat.index-1]}" />
			<c:if test="${stat.index %3 ==1}">
				<div class="row justify-content-center">
			</c:if>
			<div class="col m-4">
				<c:if test="${not empty board}">
					<div>
						<img
							src="${pageContext.request.contextPath}/display?filename=${board.attachs[0].path}/s_${board.attachs[0].uuid}"
							class="border border-primary w-100">
					</div>
					<div class="text-nowrap text-truncate text-center"
						style="width: 250px">
						<a href="#"><c:out value="${board.title}"></c:out></a>
					</div>
				</c:if>
			</div>

		<c:if test="${stat.index %3 ==0}">
	</div>
		</c:if> 
	</c:forEach>
	<hr>

	<ul class="pagination justify-content-center">
		<li class="page-item ${page.prev ? '' : 'disabled'}">
		<a class="page-link" href="list?pageNum=${page.startPage-1}&amount=${page.cri.amount}">Previous</a>
		</li>
		<c:forEach begin="${page.startPage}" end="${page.endPage}" var="p">
			<li class="page-item ${p == page.cri.pageNum ? 'active' : ''}">
				<a class="page-link" href="list?pageNum=${p}&amount=${page.cri.amount}">${p}</a>
			</li>
		</c:forEach>
		<li class="page-item ${page.next ? '' : 'disabled'}"><a
			class="page-link"
			href="list?pageNum=${page.endPage+1}&amount=${page.cri.amount}">Next</a>
		</li>
	</ul>
	<c:if test="${not empty member}">
		<a href="write"><button class="btn btn-primary float-right">?????????</button></a>

	</c:if>
	 </main>
	<!-- Footer-->
	<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>
