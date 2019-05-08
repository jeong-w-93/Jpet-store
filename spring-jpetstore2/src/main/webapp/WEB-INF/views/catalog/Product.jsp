<!DOCTYPE HTML>

<html>
	<head>
		<title>JpetStore</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="/spring-jpetstore/resources/assets/css/main.css" />
	</head>
	<%@include file="../common/IncludeTop.jsp"%>
	<%-- <body class="homepage is-preload">
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
				<section id="intro" class="wrapper style1"> --%>
					<div class="title">Product</div>
					<div class="container">
					
					
						<h2>${actionBean.product.name}</h2>

    <table class="type08">
  <thead>
    <tr>
      <th scope="col">상품 ID</th>
      <th scope="col">제품 ID</th>
      <th scope="col">종류</th>
      <th scope="col">정가</th>
		<th scope="col">&nbsp;</th>
    </tr>
  </thead>
		<c:forEach var="item" items="${itemList}">
  <tbody>
    <tr>
      <td data-label="Item ID"><a
                    href="${pageContext.request.contextPath}/catalog/viewItem?itemId=${f:h(item.itemId)}" class="mylink">
                        ${f:h(item.itemId)} </a></td>
      <td data-label="Product ID">${f:h(item.product.productId)}</td>
      <td data-label="Description">${f:h(item.attribute1)}${f:h(item.attribute2)}
                    ${f:h(item.attribute3)} ${f:h(item.attribute4)}
                    ${f:h(item.attribute5)} ${f:h(product.name)}</td>
      <td data-label="List Price"><fmt:formatNumber
                        value="${f:h(item.listPrice)}"
                        pattern="$#,##0.00" /></td>
		<td data-label="&nbsp;"><a
                    href="${pageContext.request.contextPath}/cart/addItemToCart?workingItemId=${f:h(item.itemId)}" class="mylink">
                        장바구니에 담기</a></td>
    </tr>
    
  </tbody>
			</c:forEach>
</table>
						
						<ul class="actions">
							<li><a href="/spring-jpetstore/catalog/" class="button style3">Home</a></li>
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