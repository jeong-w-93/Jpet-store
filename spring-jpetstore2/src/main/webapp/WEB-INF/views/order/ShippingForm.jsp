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
						<form:form modelAttribute="orderForm"
        action="${pageContext.request.contextPath}/order/newOrder">

        <table>
            <tr>
                <th colspan=2>Shipping Address</th>
            </tr>

            <tr>
                <td>First name:</td>
                <td><form:input path="shipToFirstName" /></td>
            </tr>
            <tr>
                <td>Last name:</td>
                <td><form:input path="shipToLastName" /></td>
            </tr>
            <tr>
                <td>Address 1:</td>
                <td><form:input size="40" path="shipAddress1" /></td>
            </tr>
            <tr>
                <td>Address 2:</td>
                <td><form:input size="40" path="shipAddress2" /></td>
            </tr>
            <tr>
                <td>City:</td>
                <td><form:input path="shipCity" /></td>
            </tr>
            <tr>
                <td>State:</td>
                <td><form:input size="4" path="shipState" /></td>
            </tr>
            <tr>
                <td>Zip:</td>
                <td><form:input size="10" path="shipZip" /></td>
            </tr>
            <tr>
                <td>Country:</td>
                <td><form:input size="15" path="shipCountry" /></td>
            </tr>
        </table>
        <form:hidden path="cardType" />
        <form:hidden path="creditCard" />
        <form:hidden path="expiryDate" />
        <form:hidden path="billToFirstName" />
        <form:hidden path="billToLastName" />
        <form:hidden path="billAddress1" />
        <form:hidden path="billAddress2" />
        <form:hidden path="billCity" />
        <form:hidden path="billState" />
        <form:hidden path="billZip" />
        <form:hidden path="billCountry" />
        <input type="submit" name="newOrder" value="Continue" />
    </form:form>
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