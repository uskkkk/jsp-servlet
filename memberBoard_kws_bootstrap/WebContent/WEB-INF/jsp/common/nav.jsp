<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <div class="container px-5">
                    <a class="navbar-brand" href="${pageContext.request.contextPath}/index.html">아이작좋아하는사람모여라</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                        			<form action="login">
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        	<c:choose>
                        		<c:when test="${empty member }">
                            			<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/login">로그인</a></li>
			                            <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/join">회원가입</a></li>
                            	</c:when>
                            	<c:otherwise>
                            			<li class="nav-item"><p class="nav-link" href="login">${member.name }님 환영합니다</p></li>
                            			<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/modify">정보수정</a></li>
                            			<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/logout">로그아웃</a></li>
                            	</c:otherwise>
                            </c:choose>
                            <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/index.html">Home</a></li>
                            <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/gallery/list">갤러리</a></li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" id="navbarDropdownBlog" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">게시판</a>
                                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownBlog">
                                    <li><a class="dropdown-item" href="${pageContext.request.contextPath}/notice/list">공지사항</a></li>
                                    <li><a class="dropdown-item" href="${pageContext.request.contextPath}/board/list">자유 게시판</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                           </form>
                </div>
            </nav>
          