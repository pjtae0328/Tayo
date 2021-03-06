<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="ko">
<head>
    <c:import url="../template/head-meta.jsp"/>
    <%--타이틀, 각 페이지따라 적절히 수정 (ex, 타요 - 멤버 프로필)--%>
    <title>타요 - 약관 동의</title>
    <script src="${pageContext.request.contextPath}/resources/js/consent.js" defer></script>
    <%-- 스타일 시트 --%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/consent-style.css">
</head>
<body>
<c:import url="../template/header.jsp"/>

<%-- 각자의 내용 작성 all-shadow는 필요없을시 지우고 사용해도 무방 --%>
<section class="all-shadow">

    <div class="consentbox tayo-scroll-bar">
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse tempor rutrum nulla, eu laoreet est
        consectetur quis. Donec eget ipsum erat. Duis eu convallis velit, ut lacinia metus. Nullam dapibus erat id
        condimentum rutrum. Ut vestibulum egestas justo vitae feugiat. Mauris bibendum velit id dolor rhoncus, non
        finibus ipsum cursus. Nam non ante ultrices, tincidunt augue a, porta augue. Suspendisse ligula justo,
        tincidunt a nulla sit amet, vulputate venenatis urna. Nullam sed lorem ligula. Vivamus eu feugiat est,
        tincidunt tincidunt urna. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias quaerat rem
        temporibus totam. A aliquam amet assumenda beatae deserunt, distinctio in iste iure magni minima modi quis
        reiciendis similique veritatis!
    </div>
    <div class="consent">
        <label class="consentcheck"><input type="checkbox" class="consentcheckbox" value="1"/>서비스 이용약관 동의 (필수)</label>
    </div>


    <div class="consentbox tayo-scroll-bar">
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse pellentesque eleifend pharetra. Nunc in
        odio diam. Sed varius ex sit amet felis viverra, ut aliquet arcu posuere. Mauris diam sapien, hendrerit id
        scelerisque non, varius nec est. Morbi libero erat, semper non auctor eu, malesuada ut sapien. Praesent sit
        amet cursus neque, nec posuere velit. Donec eu metus hendrerit, condimentum odio eu, egestas tortor. Nullam
        dictum luctus nunc, nec fermentum neque placerat sed. Praesent dui augue, ultrices vitae hendrerit vel,
        fringilla et tellus. Etiam ultricies luctus orci sed ornare. Nulla dictum, lacus in congue ultricies, magna
        enim ultrices purus, sed sodales purus diam a diam. Aenean sed odio quis leo sollicitudin semper. Lorem
        ipsum dolor sit amet, consectetur adipisicing elit. At autem beatae debitis fugiat, inventore libero magnam
        omnis praesentium qui quibusdam repellat repellendus sint tempora tempore tenetur ullam voluptates? Aliquid,
        obcaecati.
    </div>
    <div class="consent">
        <label class="consentcheck"><input type="checkbox" class="consentcheckbox" value="2"/>개인정보 처리방침 동의 (필수)</label>
    </div>


    <div class="consentbox tayo-scroll-bar">
        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla suscipit lorem mi, eget finibus nulla
        sollicitudin nec. Ut eros ligula, imperdiet ut tincidunt interdum, tempor eget mauris. Suspendisse potenti.
        Maecenas sagittis, elit id euismod venenatis, lacus ipsum tempor diam, non efficitur elit nisl vel tellus.
        In hac habitasse platea dictumst. Duis tincidunt magna quis velit auctor, vel fringilla ligula elementum.
        Integer in ligula convallis, fermentum libero ut, sodales metus. Mauris cursus fringilla nulla ut gravida.
        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab aperiam, beatae ducimus explicabo modi nemo
        perspiciatis saepe ut! Accusantium cum dicta doloremque eos error magnam minus natus nisi sapiente vitae?
    </div>
    <div class="consent">
        <label class="consentcheck"><input type="checkbox" class="consentcheckbox" value="3."/>개인정보 마케팅 활용 동의 (필수)
        </label>
    </div>


    <div class="under-line"></div>

    <div>
        <label class="allconsent consentcheck"><input type="checkbox" class="consentcheckbox consentall" name="consentall"/>전체동의</label>
    </div>
    <div class="tayo-button purple nextBtn">
        NEXT
    </div>

</section>

<c:import url="../template/footer.jsp"/>
</body>
</html>
