<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
.cart_count{ 
	position : relative;
	right : 200px;
	color : red;
}
</style>
<!-- 상단 시작 -->
<h2 class="align-center">알뜰폰 비교</h2>
<div class="align-right">
	<a href="${pageContext.request.contextPath}/main/main.do">홈으로</a>
	<c:if test="${empty user}">
		<a href="${pageContext.request.contextPath}/member/registerUser.do">회원가입</a>
		<a href="${pageContext.request.contextPath}/member/login.do">로그인</a>
	</c:if>
	<c:if test="${!empty user}">
		<a href="${pageContext.request.contextPath}/member/logout.do">로그아웃</a>
	</c:if>
	<c:if test="${!empty user && user.mem_auth == 9}">
		<a href="${pageContext.request.contextPath}/main/main.do">관리자페이지</a>
	</c:if>
</div>
<!-- 상단 끝 -->