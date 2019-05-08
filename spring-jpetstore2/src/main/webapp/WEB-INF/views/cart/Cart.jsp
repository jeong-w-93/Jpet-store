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
					<div class="title">Category</div>
					<div class="container">
					
					
						<h2>Shopping Cart</h2>
<form:form modelAttribute="cartForm"
            action="${pageContext.request.contextPath}/cart/updateCartQuantities">
     <table class="type08">
  <thead>
    <tr>
      <th scope="col">상품 ID</th>
                    <th scope="col">제품 ID</th>
                    <th scope="col">종류</th>
                    <th scope="col">재고</th>
                    <th scope="col">수량</th>
                    <th scope="col">정가</th>
                    <th scope="col">총 비용</th>
                    <th scope="col">&nbsp;</th>
    </tr>
  </thead>
		<c:if test="${actionBean.cart.numberOfItems == 0}">
                    <tr>
                        <td colspan="8"><b>Your cart is empty.</b></td>
                    </tr>
                </c:if>
                <c:forEach var="cartItem" items="${cart.cartItems}">
  <tbody>
    <tr>
    <td data-label="Item ID"><a
                            href="${pageContext.request.contextPath}/catalog/viewItem?itemId=${f:h(cartItem.item.itemId)}" class="mylink">
                                ${f:h(cartItem.item.itemId)} </a></td>
      <td data-label="Product ID">${f:h(cartItem.item.product.productId)}</td>
      <td data-label="Description">${f:h(cartItem.item.attribute1)}
                            ${f:h(cartItem.item.attribute2)}
                            ${f:h(cartItem.item.attribute3)}
                            ${f:h(cartItem.item.attribute4)}
                            ${f:h(cartItem.item.attribute5)}
                            ${f:h(cartItem.item.product.name)}</td>
      <td data-label="In Stock?">${f:h(cartItem.inStock)}</td>
      <td data-label="Quantity"><form:input
                                path="quantity[${f:h(cartItem.item.itemId)}]"
                                size="3"
                                value="${f:h(cartItem.quantity)}" /></td>
      <td data-label="List Price"><fmt:formatNumber
                                value="${f:h(cartItem.item.listPrice)}"
                                pattern="$#,##0.00" /></td>
      <td data-label="Total Cost"><fmt:formatNumber
                                value="${f:h(cartItem.total)}"
                                pattern="$#,##0.00" /></td>
      <td data-label="&nbsp;"><a
                            href="${pageContext.request.contextPath}/cart/removeItemFromCart?cartItem=${f:h(cartItem.item.itemId)}" class="mylink">Remove</a></td>
    
    </tr>
    </c:forEach>
    <tr>
                    <td colspan="7">Sub Total: <fmt:formatNumber
                            value="${cart.subTotal}" pattern="$#,##0.00" />
                        <input type="submit" value="변경하기" class="button2 style4"/></td>
                    <td>&nbsp;</td>
                </tr>
    
  </tbody>
			
</table>
				</form:form>	
				
				<c:if test="${cart.numberOfItems > 0}">
            <a
                href="${pageContext.request.contextPath}/order/newOrderForm" class="button style4">결제하기 </a>
        </c:if>
        
        <sec:authorize access="isAuthenticated()">
        <sec:authentication property="principal.account" var="account" />
        <div id="MyList">
            <c:if
                test="${account.listOption}">
                <%@ include file="IncludeMyList.jsp"%>
            </c:if>
        </div>
    </sec:authorize>

    <div id="Separator">&nbsp;</div>
					
						<ul class="actions">
							<li><a href="/spring-jpetstore/catalog/" class="button style4">Home</a></li>
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