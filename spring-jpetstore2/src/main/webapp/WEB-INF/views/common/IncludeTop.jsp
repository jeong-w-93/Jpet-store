<!DOCTYPE html>
<html>
<head>
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/include.css" />
 --%>
<!-- <link rel="stylesheet" href="/spring-jpetstore/resources/assets/css/main.css" />
 -->
<title>JPetStore Demo</title>
<meta content="text/html; charset=UTF-8" http-equiv="Content-Type" />
<meta http-equiv="Cache-Control" content="max-age=0" />
<meta http-equiv="Cache-Control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<meta http-equiv="Expires" content="Tue, 01 Jan 1980 1:00:00 GMT" />
<meta http-equiv="Pragma" content="no-cache" />


</head>


<%-- 
	<div id="includeContent">
		<c:if test="${!empty message}">
			<p>${f:h(message)}</p>
		</c:if> --%>
		
<body class="homepage is-preload">


	<div id="page-wrapper">

		<!-- Header -->
		<section id="header" class="wrapperTop">


			<!-- Logo -->
			<div id="logo">
				<h1>
					<a href="/spring-jpetstore/catalog/">JpetStore</a>
				</h1>
				<p>Welcome to JpetStore</p>
			</div>
			

			<!-- Nav -->
			<nav id="nav">
				<ul>
					<li class="current"><a href="/spring-jpetstore/catalog/">Home</a></li>
					<li><a href="#">Member</a>
						<ul>
							<sec:authorize access="!isAuthenticated()">
								<li><a
									href="${pageContext.request.contextPath}/account/signonForm">Sign
										In</a></li>
							</sec:authorize>
							<li><a href="/spring-jpetstore/cart/viewCart">Cart</a></li>
							<sec:authorize access="isAuthenticated()">
								<li><a
									href="${pageContext.request.contextPath}/account/signoff">Sign
										Out</a></li>
								<li><a
									href="${pageContext.request.contextPath}/account/editAccountForm">My
										Account</a></li>
							</sec:authorize>
						</ul></li>
					<li><a
						href="${pageContext.request.contextPath}/catalog/viewCategory?categoryId=FISH">Fish</a></li>
					<li><a
						href="${pageContext.request.contextPath}/catalog/viewCategory?categoryId=DOGS">Dogs</a></li>
					<li><a
						href="${pageContext.request.contextPath}/catalog/viewCategory?categoryId=REPTILES">Reptiles</a></li>
					<li><a
						href="${pageContext.request.contextPath}/catalog/viewCategory?categoryId=CATS">Cats</a></li>
					<li><a
						href="${pageContext.request.contextPath}/catalog/viewCategory?categoryId=BIRDS">Birds</a></li>
				</ul>
			</nav>
			
		
			<%-- <ul class="bxslider">
				<li><a href="#"><img src="<%=request.getContextPath()%>/resources/images/turtle1.jpg" alt="거북1" title="그리스" width="50px" height="50px"></a></li>
				<li><a href="#"><img src="<%=request.getContextPath()%>/resources/images/turtle2.jpg" alt="거북2" title="그리스" width="50px" height="50px"></a></li>
				<li><a href="#"><img src="<%=request.getContextPath()%>/resources/images/turtle3.jpg" alt="거북3" title="그리스" width="50px" height="50px"></a></li>
			</ul>
			 --%>
		
			
		</section>
		
		
		<!-- Intro -->
		<section id="intro" class="wrapper style1">
