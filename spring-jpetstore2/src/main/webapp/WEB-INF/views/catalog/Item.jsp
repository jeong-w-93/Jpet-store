<!DOCTYPE HTML>

<html>
	<head>
		<title>JpetStore</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="/spring-jpetstore/resources/assets/css/main.css" />
	</head>
	<%@include file="../common/IncludeTop.jsp"%>
	
					<div class="title">Item</div>
					<div class="container">
					

    <table class="type09">
    <thead>
    <tr>
            <th scope="row">${product.description}<%--  XSS Vulnerable! --%></th>
        </tr>
        </thead>
        <tr>
            <td> ${f:h(item.itemId)} </td>
        </tr>
        <tr>
            <td><font size="4">
                        ${f:h(item.attribute1)} ${f:h(item.attribute2)}
                        ${f:h(item.attribute3)} ${f:h(item.attribute4)}
                        ${f:h(item.attribute5)} ${f:h(product.name)} </font></td>
        </tr>
        <tr>
            <td>${f:h(product.name)}</td>
        </tr>
        <tr>
            <td><c:if test="${item.quantity <= 0}">
        Back ordered.
      </c:if> <c:if test="${item.quantity > 0}">
      	${f:h(item.quantity)} in stock.
	  </c:if></td>
        </tr>
        <tr>
            <td><fmt:formatNumber value="${f:h(item.listPrice)}"
                    pattern="$#,##0.00" /></td>
        </tr>

        <tr>
            <td><a
                href="${pageContext.request.contextPath}/cart/addItemToCart?workingItemId=${f:h(item.itemId)}" class="mylink">
                    Add to Cart</a></td>
        </tr>
</table>
						
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