<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="ko">
<head>
    <c:import url="../template/head-meta.jsp"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/admin-notice-style.css"/>
    <script src="${pageContext.request.contextPath}/resources/js/admin-notice-script.js" defer></script>
    <title>관리자 - 공지사항</title>
</head>

<body>
<c:import url="../template/nav.jsp"/>

<section>
    <button id="wirteBtn">작성</button>
    <h1>NOTICE</h1>
    
		<div class="wrap tayo-scroll-bar">
  		  <c:forEach items="${list }" var="notice">

				<div class="noticeBox">
					<div class="noticeText">
						<span class="text">${notice.content }</span>
					</div>

				<div class="noticeDate">
					<span class="date">작성일<fmt:formatDate value="${notice.writeDate}" pattern="yyyy-MM-dd"/></span>
				</div> 

				</div> <!-- noticeBox -->

				<div class="btnBox">
					<a class="aa" href="${pageContext.request.contextPath }/admin/notice/update/${notice.id }">
						<button class="btnUpdate">수정</button>
					</a>
<%-- 					<a href="${pageContext.request.contextPath }/admin/notice/delete/${notice.id }"> --%>
						<button class="btnDelete" data-notice-id = "${notice.id }">삭제</button>
<!-- 					</a> -->
				</div>			
			
				<div class="interval"></div>	
				
  		  </c:forEach>
		</div> <!-- wrap -->
</section>

</body>
</html>
