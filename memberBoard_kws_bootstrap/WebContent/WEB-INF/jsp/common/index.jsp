<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
 <head>
<jsp:include page="head.jsp" />
<style>
.fw-bolder {border-bottom: 2px solid #222; padding: 10px;}
.justify-content-center {margin-top: 40px;}
</style>
 </head>
 <body class="d-flex flex-column h-100">
     <main class="flex-shrink-0">
         <!-- Navigation-->
        <jsp:include page="nav.jsp" />
         <!-- Header-->
         
         <header class="bg-dark py-3">
             <div class="container px-5">
                 <div class="row gx-5 align-items-center justify-content-center">
                     <div class="col-lg-8 col-xl-7 col-xxl-6">
                         <div class="my-5 text-center text-xl-start">
                             <p class="lead fw-normal text-white mb-4">아이작 좋아!!!</p>
                             <div class="d-grid gap-3 d-sm-flex justify-content-sm-center justify-content-xl-start">
                              
                             </div>
                         </div>
                     </div>
                     <div class="col-xl-5 col-xxl-6 d-none d-xl-block text-center">
                     	<img class="img-fluid rounded-3 my-5" src="images/issac.png" alt="..." />
                     </div>
                 </div>
             </div>
         </header>
         <!-- Features section-->
         <section class="py-5 container" id="features">
             <div class="container px-5 my-5">
                 <div class="row gx-5">
                     <div class="col-lg-4 mb-5 mb-lg-0"><h2 class="fw-bolder mb-0">공지사항</h2></div>
			            <ul class="row justify-content-center">
			            	<c:forEach items="${list}" var="b">
			                <li class="col-5 m-2">
			                	<a href="board/detail?bno=${b.bno}">
			                    <div>
			                    	<i class="bi bi-collection"></i>
			                        <h4 class="text-truncate small"><c:out value="${b.title}" escapeXml="true"></c:out> </h4>
			                        <p class="text-truncate text-muted small"><c:out value="${b.content}" escapeXml="true"></c:out> </p>
			                    </div>
			                    </a>
			                </li>
			                </c:forEach>
			            </ul>
                 </div>
             </div>
         </section>
     </main>
     <!-- Footer-->
<jsp:include page="footer.jsp"></jsp:include>
    	<script>
 		 $(document).ready(function(){
   		 $('.slider').bxSlider();
   			slideWidth: 600
   		 
 		 });
		</script>
  		</body>
</html>
