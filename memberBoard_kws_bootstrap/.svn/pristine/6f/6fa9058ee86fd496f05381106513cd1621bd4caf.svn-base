<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
	<jsp:include page="../common/head.jsp" />
    </head>
    <body class="d-flex flex-column">
        <main class="flex-shrink-0">
            <!-- Navigation-->
            <jsp:include page="../common/nav.jsp" />
            <!-- Page content-->
            <section class="py-5">
                <div class="container px-5">
                    <!-- Contact form-->
                    <div class="bg-light rounded-3 py-5 px-4 px-md-5 mb-5">
                        <div class="text-center mb-5">
                            <h1 class="fw-bolder">로그인 하세요!</h1>
                            <p class="lead fw-normal text-muted mb-0">환영합니다!</p>
                        </div>
                        <div class="row gx-5 justify-content-center">
                            <div class="col-lg-8 col-xl-6">
                                <!-- * * * * * * * * * * * * * * *-->
                                <!-- * * SB Forms Contact Form * *-->
                                <!-- * * * * * * * * * * * * * * *-->
                                <!-- This form is pre-integrated with SB Forms.-->
                                <!-- To make this form functional, sign up at-->
                                <!-- https://startbootstrap.com/solution/contact-forms-->
                                <!-- to get an API token!-->
                                <form id="contactForm" data-sb-form-api-token="API_TOKEN" method="post">
                                    <!-- ID input-->
                                    <div class="form-floating mb-3">
                                        <input class="form-control" name="id" id="id" type="text" placeholder="Enter your id..." data-sb-validations="required" />
                                        <label for="name">ID</label>
                                        <div class="invalid-feedback"  data-sb-feedback="id:required">아이디를 입력해주세요</div>
                                    </div>
                                    <!-- PassWord input-->
                                    <div class="form-floating mb-3">
                                        <input class="form-control" name="pwd" id="pwd" type="password" placeholder="Enter your Pw..." data-sb-validations="required" />
                                        <label for="name">PassWord</label>
                                        <div class="invalid-feedback" data-sb-feedback="pwd:required">비밀번호를 입력해주세요</div>
                                    </div>
                                    <p><label><input type="checkbox" name="savedId" id="savedId">아이디 저장</label></p>
                                   
                                    <!-- Submit Button-->
                                    <div class="d-grid"><button class="btn btn-primary btn-lg " id="submitButton" type="submit">로그인</button></div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- Contact cards-->
                    
        </main>
        <!-- Footer-->
        <footer class="bg-dark py-4 mt-auto">
            <div class="container px-5">
                <div class="row align-items-center justify-content-between flex-column flex-sm-row">
                    <div class="col-auto"><div class="small m-0 text-white">Copyright &copy; Your Website 2021</div></div>
                    <div class="col-auto">
                        <a class="link-light small" href="#!">Privacy</a>
                        <span class="text-white mx-1">&middot;</span>
                        <a class="link-light small" href="#!">Terms</a>
                        <span class="text-white mx-1">&middot;</span>
                        <a class="link-light small" href="#!">Contact</a>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
        <script>
		$(function () {
			if($.cookie("savedId")) {
				$("#id").val($.cookie("savedId"));
				$("#savedId").prop("checked", true);
			}
			
		});
	</script>
    </body>
</html>
