<table class="type09">
<tr>
                <th colspan=2>계정 정보</th>
            </tr>
    <tr>
        <td>성:</td>
        <td><form:input path="firstName" /> <form:errors
                path="firstName" /></td>
    </tr>
    <tr>
        <td>이름:</td>
        <td><form:input path="lastName" /> <form:errors
                path="lastName" /></td>
    </tr>
    <tr>
        <td>Email:</td>
        <td><form:input size="40" path="email" /> <form:errors
                path="email" /></td>
    </tr>
    <tr>
        <td>휴대폰 번호:</td>
        <td><form:input path="phone" /> <form:errors path="phone" /></td>
    </tr>
    <tr>
        <td>주소 1:</td>
        <td><form:input size="40" path="address1" /> <form:errors
                path="address1" /></td>
    </tr>
    <tr>
        <td>주소 2:</td>
        <td><form:input size="40" path="address2" /> <form:errors
                path="address2" /></td>
    </tr>
    <tr>
        <td>도시:</td>
        <td><form:input path="city" /> <form:errors path="city" /></td>
    </tr>
    <tr>
        <td>주:</td>
        <td><form:input size="4" path="state" /> <form:errors
                path="state" /></td>
    </tr>
    <tr>
        <td>Zip:</td>
        <td><form:input size="10" path="zip" /> <form:errors
                path="zip" /></td>
    </tr>
    <tr>
        <td>국가:</td>
        <td><form:input size="15" path="country" /> <form:errors
                path="country" /></td>
    </tr>
</table>



<table class="type09">
<tr>
                <th colspan=2>프로필 정보</th>
            </tr>
    <tr>
        <td>언어 환경 설정:</td>
        <td><form:select path="languagePreference"
                items="${languageList}" /> <form:errors
                path="languagePreference" /></td>
    </tr>
    <tr>
        <td>좋아하는 카테고리:</td>
        <td><form:select path="favouriteCategoryId"
                items="${categoryList}" /> <form:errors
                path="favouriteCategoryId" /></td>
    </tr>
    <tr>
        <td>MyList 사용</td>
        <td><form:checkbox path="listOption" /> <form:errors
                path="listOption" /></td>
    </tr>
    <tr>
        <td>MyBanner 사용</td>
        <td><form:checkbox path="bannerOption" /> <form:errors
                path="bannerOption" /></td>
    </tr>
</table>
