<!DOCTYPE HTML>

<html>
<head>
<title>JpetStore</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet"
	href="/spring-jpetstore/resources/assets/css/main.css" />
</head>
<%@include file="../common/IncludeTop.jsp"%>

<div class="title">Sign On</div>
<div class="container">


	<h2>${f:h(category.name)}</h2>

	<table class="type09">
		<c:if test="${not empty param.error}">

			<h2 class="alert-heading">Login error!</h2>
            ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
        
    </c:if>
		<form action='${pageContext.request.contextPath}/account/signon'
			method="POST">

			<h2>ID와 패스워드를 입력하여 주세요.</h2>
			<td>Username: <input type='text' name='j_username' value='test1'>
				<br /> Password: <input type='password' name='j_password'
				value="test1" /> <br />
			<input name="submit" type="submit" value="Login"
				class="button2 style4" /><br /> <br /> <a
				href="${pageContext.request.contextPath}/account/newAccountForm"
				class="mylink">회원가입</a>시 다양한 혜택이 없습니다.
			</td>

		</form>
		<h2>
		아이디가 없으신가요?
			<a href="${pageContext.request.contextPath}/account/newAccountForm"
				class="mylink">회원가입</a>
				
		</h2>
	</table>

	<ul class="actions">
		<li><a href="/spring-jpetstore/catalog/"
			class="button style3 large">Home</a></li>
	</ul>


</div>
</section>


</div>

<!-- Scripts -->
<script src="/spring-jpetstore/resources/assets/js/jquery.min.js"></script>
<script
	src="/spring-jpetstore/resources/assets/js/jquery.dropotron.min.js"></script>
<script src="/spring-jpetstore/resources/assets/js/browser.min.js"></script>
<script src="/spring-jpetstore/resources/assets/js/breakpoints.min.js"></script>
<script src="/spring-jpetstore/resources/assets/js/util.js"></script>
<script src="/spring-jpetstore/resources/assets/js/main.js"></script>

</body>
</html>