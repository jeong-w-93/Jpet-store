<!DOCTYPE HTML>

<html>
	<head>
		<title>JpetStore</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="/spring-jpetstore/resources/assets/css/main.css" />
	</head>
	<%@include file="../common/IncludeTop.jsp"%>
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
						<table>
        <tr>
            <td>
                <h2>Checkout Summary</h2>

                <table>

                    <tr>
                        <td><b>Item ID</b></td>
                        <td><b>Product ID</b></td>
                        <td><b>Description</b></td>
                        <td><b>In Stock?</b></td>
                        <td><b>Quantity</b></td>
                        <td><b>List Price</b></td>
                        <td><b>Total Cost</b></td>
                    </tr>

                    <c:forEach var="cartItem" items="${cart.cartItems}">
                        <tr>
                            <td><a
                                href="${pageContext.request.contextPath}/catalog/viewItem?itemId=${f:h(cartItem.item.itemId)}">
                                    ${f:h(cartItem.item.itemId)}</a></td>
                            <td>${f:h(cartItem.item.product.productId)}</td>
                            <td>${f:h(cartItem.item.attribute1)}
                                ${f:h(cartItem.item.attribute2)}
                                ${f:h(cartItem.item.attribute3)}
                                ${f:h(cartItem.item.attribute4)}
                                ${f:h(cartItem.item.attribute5)}
                                ${f:h(cartItem.item.product.name)}</td>
                            <td>${f:h(cartItem.inStock)}</td>
                            <td>${f:h(cartItem.quantity)}</td>
                            <td><fmt:formatNumber
                                    value="${f:h(cartItem.item.listPrice)}"
                                    pattern="$#,##0.00" /></td>
                            <td><fmt:formatNumber
                                    value="${f:h(cartItem.total)}"
                                    pattern="$#,##0.00" /></td>
                        </tr>
                    </c:forEach>
                    <tr>
                        <td colspan="7">Sub Total: <fmt:formatNumber
                                value="${f:h(cart.subTotal)}"
                                pattern="$#,##0.00" /></td>
                    </tr>
                </table>
            <td>&nbsp;</td>

        </tr>
    </table>
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