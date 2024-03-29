<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
			<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
                crossorigin="anonymous">
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
                crossorigin="anonymous"></script>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
            <!-- jQuery 인식 -->
     <style>
       

		 .menu1 a,.menu2 a,.menu3 a{
  			color : rgb(162, 197, 121);
 			}
         .menu1 a:hover,.menu2 a:hover,.menu3 a:hover{
              color : rgb(194, 226, 157);
          }    
          .btn1,.login span{
          	color : rgb(255, 181, 52);
          } 
          .btn1:hover{
          	color : rgb(255, 181, 52,0.5);
          } 
           article {
               position: relative;
               margin: auto;
               margin-bottom: 100px;
           }

           .join {
               text-align: center;
               padding-top: 30px;
               padding-bottom: 30px;
           }

           .join h5 {
        			color : rgb(66, 123, 1);
           }

           .join-box {
               width: 400px;
               margin-left: 435px;
               text-align: left;
           }

           .join-box button {
               width: 400px;
           }

           footer {
               display: flex;
               margin-bottom: 30px;
           }

           .footer-content {
               font-size: 0.85em;
               margin-left: 270px;
           }

           .footer-content span {
               font-weight: 600;
           }

           .sns-btn {
               padding-left: 100px;
               padding-top: 30px;
           }

           .sns-btn button {
               background-color: white;
               border: none;
               padding-left: 20px;
           }

           .sns-btn button a {
               color: gray;
           }
       </style>
</head>
<body>

	<%@ include file="./includes/header.jsp" %>
	
	 <article>
         <section class="join">
             <div class="join-logo">
                 <img src="<%=request.getContextPath()%>/resources/img/logo.png">
                 <h5>야옹아 멍멍해봐</h5>
             </div>
             <div>
                 <h5>야옹아 멍멍해봐에 로그인하세요.</h5><br>

                 <div class="join-box">
                     <form action="loginpro" method="post">
                         <div class="form-floating mb-3">
                         	 <input type="hidden" id="referer" name="referer">
                             <input type="email" class="form-control" id="mid" name="member_email"
                                 placeholder="name@example.com" required> <label for="idInput">이메일</label>
                             <div>
                                 <font id="id_font" size="2"> </font>
                             </div>
                         </div>
                         <div class="form-floating">
                             <input type="password" class="form-control" id="floatingPassword" name="member_pw"
                                 placeholder="name@example.com" required> <label
                                 for="floatingPassword">비밀번호</label>
                             <div>
                                 <font id="pass_font" size="2"> </font>
                             </div>

                         </div>
                         <div>
                             <br>
                             <h6>저희 서비스를 이용하는 사람이 회원님의 연락처 정보를 야옹아 멍멍해봐에 업로드 했을 수도 있습니다. </h6>

                             <button type="submit" class="btn btn-primary" id="submitbtn">로그인하기</button>

                         </div>
                     </form>
                     <script type="text/javascript">

                     </script>

                 </div>

             </div>

         </section>
     </article>
	
	<%@ include file="./includes/footer.jsp" %>

</body>
<script>
	//referer 페이지를 요청한 이전 페이지의 정보
	//		-> newtwork의 headers 부분에서 확인 가능
	if(document.referrer){
		console.log("이전페이지 주소 : "+document.referrer);
		//document.getElementById('referer').value = document.referrer;
		$('#referer').val(document.referrer);
	}
</script>
</html>