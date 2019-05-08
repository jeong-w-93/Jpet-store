<!DOCTYPE HTML>

<html>
	<head>
		<title>JpetStore</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="/spring-jpetstore/resources/assets/css/main.css" />
	</head>
	<body class="homepage is-preload">
		<div id="page-wrapper">

			<!-- Header -->
				<section id="header" class="wrapper">

					<!-- Logo -->
						<div id="logo">
							<h1><a href="/spring-jpetstore/catalog/">JpetStore</a></h1>
							<p>Welcome to JpetStore</p>
						</div>

					<!-- Nav -->
						<nav id="nav">
							<ul>
								<li class="current"><a href="/spring-jpetstore/catalog/">Home</a></li>
								<li>
									<a href="#">Member</a>
									<ul>
									<sec:authorize access="!isAuthenticated()">
										<li><a href="${pageContext.request.contextPath}/account/signonForm">Sign In</a></li>
										</sec:authorize>
										<li><a href="/spring-jpetstore/cart/viewCart">Cart</a></li>
										<sec:authorize access="isAuthenticated()">
										<li><a href="${pageContext.request.contextPath}/account/signoff">Sign Out</a></li>
										<li><a href="${pageContext.request.contextPath}/account/editAccountForm">My Account</a></li>
										</sec:authorize>
									</ul>
								</li>
								<li><a href="${pageContext.request.contextPath}/catalog/viewCategory?categoryId=FISH">Fish</a></li>
								<li><a href="${pageContext.request.contextPath}/catalog/viewCategory?categoryId=DOGS">Dogs</a></li>
								<li><a href="${pageContext.request.contextPath}/catalog/viewCategory?categoryId=REPTILES">Reptiles</a></li>
								<li><a href="${pageContext.request.contextPath}/catalog/viewCategory?categoryId=CATS">Cats</a></li>
								<li><a href="${pageContext.request.contextPath}/catalog/viewCategory?categoryId=BIRDS">Birds</a></li>
							</ul>
						</nav>

				</section>

			<!-- Intro -->
				<section id="intro" class="wrapper style1">
					<div class="title">Category</div>
					<div class="container">
					
					<div id="Catalog2">
						<h2>System Error...</h2>
<p>
    <a href="${pageContext.request.contextPath}/catalog/">Go to TOP</a>
</p>
						</div>
						<ul class="actions">
							<li><a href="/spring-jpetstore/catalog/" class="button style3 large">Home</a></li>
						</ul>
					
					
					</div>
				</section>

			
		</div>

		<!-- Scripts -->
			<script src="/spring-jpetstore/resources/assets/js/jquery.min.js"></script>
			<script src="/spring-jpetstore/resources/assets/js/jquery.dropotron.min.js"></script>
			<script src="/spring-jpetstore/resources/assets/js/browser.min.js"></script>
			<script src="/spring-jpetstore/resources/assets/js/breakpoints.min.js"></script>
			<script src="/spring-jpetstore/resources/assets/js/util.js"></script>
			<script src="/spring-jpetstore/resources/assets/js/main.js"></script>

	</body>
</html>