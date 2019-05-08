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
					<div class="title">Account</div>
					<div class="container">
					
<table class="type09">
        <tr>
            <th align="center" colspan="2">Order #${order.orderId}
                <fmt:formatDate value="${order.orderDate}"
                    pattern="yyyy/MM/dd hh:mm:ss" />
            </th>
        </tr>
        </table>

        <div class="tabs">
  <div class="tab-button-outer">
    <ul id="tab-button">
      <li><a href="#tab01">지불 세부 사항</a></li>
      <li><a href="#tab02">청구지 주소</a></li>
      <li><a href="#tab03">배송 주소</a></li>
      <li><a href="#tab04">주문내역</a></li>
      <li><a href="#tab05">기타</a></li>
    </ul>
  </div>
  <div class="tab-select-outer">
    <select id="tab-select">
      <option value="#tab01">지불 세부 사항</option>
      <option value="#tab02">청구지 주소</option>
      <option value="#tab03">배송 주소</option>
      <option value="#tab04">주문내역</option>
      <option value="#tab05">기타</option>
    </select>
  </div>

  <div id="tab01" class="tab-contents">
    

        <table class="type09">
        <tr>
        <th colspan=2>지불 세부 사항</th>
        </tr>
            <tr>
            <td>Card Type:</td>
            <td>${f:h(order.cardType)}</td>
        </tr>
        <tr>
            <td>Card Number:</td>
            <td>${f:h(order.creditCard)}*Fakenumber!</td>
        </tr>
        <tr>
            <td>Expiry Date (MM/YYYY):</td>
            <td>${f:h(order.expiryDate)}</td>
        </tr>
        </table>
  </div>
  <div id="tab02" class="tab-contents">
    

        <table class="type09">
        <tr>
            <th colspan="2">청구지 주소</th>
        </tr>
        <tr>
            <td>First name:</td>
            <td>${f:h(order.billToFirstName)}</td>
        </tr>
        <tr>
            <td>Last name:</td>
            <td>${f:h(order.billToLastName)}</td>
        </tr>
        <tr>
            <td>Address 1:</td>
            <td>${f:h(order.billAddress1)}</td>
        </tr>
        <tr>
            <td>Address 2:</td>
            <td>${f:h(order.billAddress2)}</td>
        </tr>
        <tr>
            <td>City:</td>
            <td>${f:h(order.billCity)}</td>
        </tr>
        <tr>
            <td>State:</td>
            <td>${f:h(order.billState)}</td>
        </tr>
        <tr>
            <td>Zip:</td>
            <td>${f:h(order.billZip)}</td>
        </tr>
        <tr>
            <td>Country:</td>
            <td>${f:h(order.billCountry)}</td>
        </tr>
        </table>
  </div>
  <div id="tab03" class="tab-contents">
    <table class="type09">
    <tr>
            <th colspan="2">배송 주소</th>
        </tr>
        <tr>
            <td>First name:</td>
            <td>${f:h(order.shipToFirstName)}</td>
        </tr>
        <tr>
            <td>Last name:</td>
            <td>${f:h(order.shipToLastName)}</td>
        </tr>
        <tr>
            <td>Address 1:</td>
            <td>${f:h(order.shipAddress1)}</td>
        </tr>
        <tr>
            <td>Address 2:</td>
            <td>${f:h(order.shipAddress2)}</td>
        </tr>
        <tr>
            <td>City:</td>
            <td>${f:h(order.shipCity)}</td>
        </tr>
        <tr>
            <td>State:</td>
            <td>${f:h(order.shipState)}</td>
        </tr>
        <tr>
            <td>Zip:</td>
            <td>${f:h(order.shipZip)}</td>
        </tr>
        <tr>
            <td>Country:</td>
            <td>${f:h(order.shipCountry)}</td>
        </tr>
        <tr>
            <td>Courier:</td>
            <td>${f:h(order.courier)}</td>
        </tr>
    </table>
  </div>
  <div id="tab04" class="tab-contents">
    
            <table class="type08">
            
            <!--  <h2>Status: ${f:h(order.status)}</h2> -->
        
  <thead>
    <tr>
      <th scope="col">상품 ID</th>
      <th scope="col">종류</th>
      <th scope="col">수량</th>
      <th scope="col">가격</th>
      <th scope="col">총 비용</th>
    </tr>
  </thead>
		<c:forEach var="lineItem" items="${order.lineItems}">
  <tbody>
    <tr>
                            <td data-label="Item ID"><a
                                href="${pageContext.request.contextPath}/catalog/viewItem?itemId=${f:h(lineItem.item.itemId)}" class="mylink">
                                    ${f:h(lineItem.item.itemId)} </a></td>
                            <td data-label="Description"><c:if
                                    test="${lineItem.item != null}">
                        ${f:h(lineItem.item.attribute1)}
                        ${f:h(lineItem.item.attribute2)}
                        ${f:h(lineItem.item.attribute3)}
                        ${f:h(lineItem.item.attribute4)}
                        ${f:h(lineItem.item.attribute5)}
                        ${f:h(lineItem.item.product.name)}
                    </c:if> <c:if test="${lineItem.item == null}">
                                    <i>{description unavailable}</i>
                                </c:if></td>

                            <td data-label="Quantity">${f:h(lineItem.quantity)}</td>
                            <td data-label="Price"><fmt:formatNumber
                                    value="${f:h(lineItem.unitPrice)}"
                                    pattern="$#,##0.00" /></td>
                            <td data-label="Total Cost"><fmt:formatNumber
                                    value="${f:h(lineItem.total)}"
                                    pattern="$#,##0.00" /></td>
                        </tr>
                        
                         </tbody>
                        </c:forEach>
                        <tr>
                        <td colspan="5">Total: <fmt:formatNumber
                                value="${f:h(order.totalPrice)}"
                                pattern="$#,##0.00" /></td>
                    </tr>
                        
    
 
			
</table>
            
        
   
  </div>
  <div id="tab05" class="tab-contents">
    
  </div>
</div>

 
						
						<ul class="actions">
							<li><a href="/spring-jpetstore/catalog/" class="button2 style4">Home</a></li>
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
			<script src="/spring-jpetstore/resources/assets/js/table.js"></script>

	</body>
</html>