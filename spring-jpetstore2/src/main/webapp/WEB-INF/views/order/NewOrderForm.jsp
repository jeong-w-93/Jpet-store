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
					
					
	
    <form:form modelAttribute="orderForm"
        action="${pageContext.request.contextPath}/order/newOrder">

        <div class="tabs">
  <div class="tab-button-outer">
    <ul id="tab-button">
      <li><a href="#tab01">지불 세부 사항</a></li>
      <li><a href="#tab02">청구지 주소</a></li>
      <li><a href="#tab03">프로필 정보</a></li>
      <li><a href="#tab04">주문자 정보</a></li>
      <li><a href="#tab05">배송지 정보</a></li>
    </ul>
  </div>
  <div class="tab-select-outer">
    <select id="tab-select">
      <option value="#tab01">지불 세부 사항</option>
      <option value="#tab02">청구지 주소</option>
      <option value="#tab03">프로필 정보</option>
      <option value="#tab04">주문자 정보</option>
      <option value="#tab05">배송지 정보</option>
    </select>
  </div>

  <div id="tab01" class="tab-contents">
    

        <table class="type09">
        <tr>
        <th colspan=2>지불 세부 사항</th>
        </tr>
            <tr>
                <td>Card Type:</td>
                <td><form:select path="cardType"
                        items="${creditCardTypes}">
                    </form:select></td>
            </tr>
            <tr>
                <td>Card Number:</td>
                <td><form:input path="creditCard" /> * Use a fake
                    number!</td>
            </tr>
            <tr>
                <td>Expiry Date (MM/YYYY):</td>
                <td><form:input path="expiryDate" /></td>
            </tr>
        </table>
  </div>
  <div id="tab02" class="tab-contents">
    

        <table class="type09">
        <tr>
        <th colspan=2>청구지 주소</th>
        </tr>
            <tr>
                <td>First name:</td>
                <td><form:input path="billToFirstName" /></td>
            </tr>
            <tr>
                <td>Last name:</td>
                <td><form:input path="billToLastName" /></td>
            </tr>
            <tr>
                <td>Address 1:</td>
                <td><form:input size="40" path="billAddress1" /></td>
            </tr>
            <tr>
                <td>Address 2:</td>
                <td><form:input size="40" path="billAddress2" /></td>
            </tr>
            <tr>
                <td>City:</td>
                <td><form:input path="billCity" /></td>
            </tr>
            <tr>
                <td>State:</td>
                <td><form:input size="4" path="billState" /></td>
            </tr>
            <tr>
                <td>Zip:</td>
                <td><form:input size="10" path="billZip" /></td>
            </tr>
            <tr>
                <td>Country:</td>
                <td><form:input size="15" path="billCountry" /></td>
            </tr>

            <tr>
                <td colspan=2><form:checkbox
                        path="shippingAddressRequired" /> Ship to
                    different address...</td>
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


        <form:hidden path="shipToFirstName" />
        <form:hidden path="shipToLastName" />
        <form:hidden path="shipAddress1" />
        <form:hidden path="shipAddress2" />
        <form:hidden path="shipCity" />
        <form:hidden path="shipState" />
        <form:hidden path="shipZip" />
        <form:hidden path="shipCountry" />
        <input type="submit" name="newOrder" value="다음으로" class="button2 style4"/>
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