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
                            <h1 class="fw-bolder">회원가입 하세요!</h1>
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
                                <form id="contactForm" data-sb-form-api-token="API_TOKEN" method="post" >
                                    <!-- ID input-->
                                    <div class="form-floating mb-3 float-right">
                                        <label for="name">ID</label>
                                        <input class="form-control" name="id" id="id" type="text" placeholder="Enter your id..." data-sb-validations="required" />
                                        <div class="invalid-feedback"  data-sb-feedback="id:required">아이디를 입력해주세요</div>
                                        <button class="btn btn-primary" type="button" name="btnCkId" id="btnCkId" ckId="" tmpId="">중복체크</button>
                                    </div>
                                    <!-- PassWord input-->
                                    <div class="form-floating mb-3">
                                        <label for="name">PassWord</label>
                                        <input class="form-control" name="pwd" id="pwd" type="password" placeholder="Enter your Pw..." data-sb-validations="required" />
                                        <div class="invalid-feedback" data-sb-feedback="pw:required">비밀번호를 입력해주세요</div>
                                    </div>
                                    <div class="form-floating mb-3">
                                        <label for="name">Check PassWord</label>
                                        <input class="form-control" name="pwdCk" id="pwdCk" type="password" placeholder="Enter your PwCk..." data-sb-validations="required" />
                                        <div class="invalid-feedback" data-sb-feedback="pwCk:required">비밀번호를 확인해주세요</div>
                                    </div>
                                    <div class="form-floating mb-3">
                                        <label for="name">E-mail</label>
                                        <input class="form-control" name="email" id="email" type="email" placeholder="Enter your email..." data-sb-validations="required" />
                                        <div class="invalid-feedback" data-sb-feedback="email:required">이메일을 확인해주세요</div>
                                    </div>
                                    <div class="form-floating mb-3">
                                        <label for="name">Name</label>
                                        <input class="form-control" name="name" id="name" type="text" placeholder="Enter your name..." data-sb-validations="required" />
                                        <div class="invalid-feedback" data-sb-feedback="name:required">이름 확인해주세요</div>
                                    </div>
                                    <!-- Submit Button-->
                                    <div class="d-grid"><button class="btn btn-primary btn-lg " name="btnJoin" id="btnJoin" >회원가입</button></div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- Contact cards-->
                    
        </main>
        <!-- Footer-->
		<jsp:include page="../common/footer.jsp"></jsp:include>
<!--         <script> -->
// 		$(function() {
// 			$("#btnCkId").click(function () {
// 				var id = $("#id").val();
// 				var idPwdPattern = RegExp(/^[A-Za-z0-9]{4,12}$/); //영 대,소문자 또는 숫자 4~12
				
// 				if(id) {
// 					if(!idPwdPattern.test(id)) {
// 						$("#btnCkId").attr("ckId", "N");
// 						alert("사용할수없는 아이디 형식");
// 						$("#id").focus();
// 					} else {
// 						$.ajax("idValid?id=" + id , {
// 							success : function(data) {
// 								if(data / 1) {
// 									$("#btnCkId").attr("ckId", "Y");
// 									$("#btnCkId").attr("tmpId", id);
// 									alert("사용할수있는 아이디 입니다");
// 									$("#id").focus();
// 								} else {
// 									$("#btnCkId").attr("ckId", "N");
// 									alert("이미 사용중인 아이디 입니다");
// 									$("#id").focus();
// 								}
// 							}
// 						})
// 					}
					
// 				} else {
// 					alert("아이디를 입력해주세요");
// 					$("#id").focus();
// 				}
// 			})
			
// 			$("#btnJoin").click(function() {
				
// 				var id = $("#id").val();
// 				var tmpId = $("btnCkId").attr("tmpId");
// 				var	pwd = $("#pwd").val();
// 				var	pwdCk = $("#pwdCk").val();
// 				var email = $("#email").val();
// 				var name = $("#name").val();
// 				var namePattern = RegExp(/^[가-힣]{1,4}$/);
// 				var idPwdPattern = RegExp(/^[A-Za-z0-9]{4,12}$/);
				
// 				// 테스트 끝나면 최대 글자수 정하기
// 				var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
// 				var ckId = $("#btnCkId").attr("ckId");
				
// 				// 아이디
// 				if(id) {
// 					if(ckId == "") {
// 						alert("중복체크를 해주세요");
// 						$("#id").focus();
// 						return false;
// 					} else if (ckId == "N") {
// 						alert("사용할수없는 아이디 입니다");
// 						$("#id").focus();
// 					}
// 				} else {
// 					alert("아이디를 입력해주세요");
// 					$("#id").focus();
// 					return false;
// 				}
				
// 				if(tmpId != id) {
// 					alert("다시 중복체크해주세요");
// 					$("#btnCkId").focus();
// 				}
				
				
// 				// 비밀번호 유효성 검사
// 				if(pwd) {
// 					if(!idPwdPattern.test(pwd)) {
// 						alert("사용할수없는 비밀번호 형식");
// 						$("#pwd").focus();
// 						return false;
// 					}
// 				} else{
// 					alert("비밀번호를 입력해주세요");
// 					$("#pwd").focus();
// 					return false;
// 				}
				
				
// 				// 이메일
// 				if(email) {
// 					if(!emailPattern.test(email)) {
// 						alert("사용할수없는 비밀번호 형식");
// 						$("#email").focus();
// 						return false;
// 					}
// 				} else{
// 					alert("이메일을 입력해주세요");
// 					$("#email").focus();
// 					return false;
// 				}
				
				
// 				//이름
// 				if(name) {
// 					if( !namePattern.test(name) ) {
// 						alert("사용할수없는 이름");
// 						$("#name").focus();
// 						return false;
// 					}
					
// 				} else{
// 					alert("이름을 입력해주세요");
// 					$("#name").focus();
// 					return false;
// 				}
				
// 			})
// 		})
<!-- 		</script> -->
    </body>
</html>
