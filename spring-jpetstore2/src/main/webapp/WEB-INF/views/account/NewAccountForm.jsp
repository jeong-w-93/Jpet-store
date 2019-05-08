<!DOCTYPE HTML>

<html>
	<head>
		<title>JpetStore</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="/spring-jpetstore/resources/assets/css/main.css" />
	</head>
	<%@include file="../common/IncludeTop.jsp"%>
	
					<div class="title">Account</div>
					<div class="container">
					
					
	
    <form:form modelAttribute="accountForm"
        action="${pageContext.request.contextPath}/account/newAccount">

        <div class="tabs">
  <div class="tab-button-outer">
    <ul id="tab-button">
      <li><a href="#tab01">사용자정보</a></li>
      <li><a href="#tab02">계정 정보</a></li>
      <li><a href="#tab03">프로필 정보</a></li>
      <li><a href="#tab04">주문자 정보</a></li>
      <li><a href="#tab05">배송지 정보</a></li>
    </ul>
  </div>
  <div class="tab-select-outer">
    <select id="tab-select">
      <option value="#tab01">사용자 정보</option>
      <option value="#tab02">계정 정보</option>
      <option value="#tab03">프로필 정보</option>
      <option value="#tab04">주문자 정보</option>
      <option value="#tab05">배송지 정보</option>
    </select>
  </div>

  <div id="tab01" class="tab-contents">
    

        <table class="type09">
        <tr>
        <th colspan=2>사용자정보</th>
        </tr>
            <tr>
                <td>사용자 ID:</td>
                <td><form:input path="username" /> <form:errors
                        path="username" /></td>
            </tr>
            <tr>
                <td>새 비밀번호:</td>
                <td><form:password path="password" /> <form:errors
                        path="password" /></td>
            </tr>
            <tr>
                <td>비밀번호 확인:</td>
                <td><form:password path="repeatedPassword" /> <form:errors
                        path="repeatedPassword" /></td>
            </tr>
        </table>
  </div>
  <div id="tab02" class="tab-contents">
    

        <table class="type09">
        <%@ include file="IncludeAccountFields.jsp"%>
        </table>
  </div>
  <div id="tab03" class="tab-contents">
    <h2>Tab 3</h2>
    <p>...</p>
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

        <input type="submit" name="newAccount"
            value="계정 정보 저장" class="button2 style4"/>
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