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
					<div class="title">Order</div>
					<div class="container">
					
					아래 정보를 확인한 다음 결제완료 버튼을 누르십시오...
	
   <form:form modelAttribute="orderForm"
        action="${pageContext.request.contextPath}/order/newOrder">
        
        <table>
            <tr>
                <th align="center" colspan="2"><font size="4"><b>Order</b></font>
                    <br /> <font size="3"><b> <fmt:formatDate
                                value="${order.orderDate}"
                                pattern="yyyy/MM/dd hh:mm:ss" /></b></font></th>
            </tr>
            </table>

        <div class="tabs">
  <div class="tab-button-outer">
    <ul id="tab-button">
      <li><a href="#tab01">청구지 주소</a></li>
      <li><a href="#tab02">배송 주소</a></li>
      <li><a href="#tab03">프로필 정보</a></li>
      <li><a href="#tab04">주문자 정보</a></li>
      <li><a href="#tab05">배송지 정보</a></li>
    </ul>
  </div>
  <div class="tab-select-outer">
    <select id="tab-select">
      <option value="#tab01">청구지 주소</option>
      <option value="#tab02">배송 주소</option>
      <option value="#tab03">프로필 정보</option>
      <option value="#tab04">주문자 정보</option>
      <option value="#tab05">배송지 정보</option>
    </select>
  </div>

  <div id="tab01" class="tab-contents">
    

        <table class="type09">
        <tr>
        <th colspan=2>청구지 주소</th>
        </tr>
            <tr>
                <td>First name:</td>
                <td>${f:h(orderForm.billToFirstName)}<form:hidden
                        path="billToFirstName" /></td>
            </tr>
            <tr>
                <td>Last name:</td>
                <td>${f:h(orderForm.billToLastName)}<form:hidden
                        path="billToLastName" /></td>
            </tr>
            <tr>
                <td>Address 1:</td>
                <td>${f:h(orderForm.billAddress1)}<form:hidden
                        path="billAddress1" /></td>
            </tr>
            <tr>
                <td>Address 2:</td>
                <td>${f:h(orderForm.billAddress2)}<form:hidden
                        path="billAddress2" /></td>
            </tr>
            <tr>
                <td>City:</td>
                <td>${f:h(orderForm.billCity)}<form:hidden
                        path="billCity" /></td>
            </tr>
            <tr>
                <td>State:</td>
                <td>${f:h(orderForm.billState)}<form:hidden
                        path="billState" /></td>
            </tr>
            <tr>
                <td>Zip:</td>
                <td>${f:h(orderForm.billZip)}<form:hidden
                        path="billZip" /></td>
            </tr>
            <tr>
                <td>Country:</td>
                <td>${f:h(orderForm.billCountry)}<form:hidden
                        path="billCountry" /></td>
            </tr>
        </table>
  </div>
  <div id="tab02" class="tab-contents">
    

        <table class="type09">
        <tr>
                <td>First name:</td>
                <td>${f:h(orderForm.shipToFirstName)}<form:hidden
                        path="shipToFirstName" /></td>
            </tr>
            <tr>
                <td>Last name:</td>
                <td>${f:h(orderForm.shipToLastName)}<form:hidden
                        path="shipToLastName" />
                </td>
            </tr>
            <tr>
                <td>Address 1:</td>
                <td>${f:h(orderForm.shipAddress1)}<form:hidden
                        path="shipAddress1" /></td>
            </tr>
            <tr>
                <td>Address 2:</td>
                <td>${f:h(orderForm.shipAddress2)}<form:hidden
                        path="shipAddress2" /></td>
            </tr>
            <tr>
                <td>City:</td>
                <td>${f:h(orderForm.shipCity)}<form:hidden
                        path="shipCity" /></td>
            </tr>
            <tr>
                <td>State:</td>
                <td>${f:h(orderForm.shipState)}<form:hidden
                        path="shipState" /></td>
            </tr>
            <tr>
                <td>Zip:</td>
                <td>${f:h(orderForm.shipZip)}<form:hidden
                        path="shipZip" /></td>
            </tr>
            <tr>
                <td>Country:</td>
                <td>${f:h(orderForm.shipCountry)}<form:hidden
                        path="shipCountry" /></td>
            </tr>
        </table>
  </div>
  <div id="tab03" class="tab-contents">
    <h2>Tab 3</h2>
    <p> ...</p>
  </div>
  <div id="tab04" class="tab-contents">
    <h2>Tab 4</h2>
    <p> ...</p>
  </div>
  <div id="tab05" class="tab-contents">
    <h2>Tab 5</h2>
    <p> ...</p>
  </div>
</div>

       <form:hidden path="cardType" />
        <form:hidden path="creditCard" />
        <form:hidden path="expiryDate" />
        <input type="hidden" name="confirmed" value="true" />
        <input type="submit" value="결제완료" class="button2 style4">
    </form:form>

						
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