<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!-- 회원가입 시작 -->
<div class="page-main">
	<h2>회원가입</h2>
	<form:form modelAttribute="memberVO" action="registerUser.do" id="member_register">
		<ul>
			<li>
				<form:label path="mem_id">아이디</form:label>
				<form:input path="mem_id" placeholder="영문, 숫자 4~12자" autocomplete="off"/>
				<input type="button" id="cofirmId" value="아이디 중복체크">
				<span id="check_id_message"></span>
				<form:errors path="mem_id" cssClass="error-color"/>
			</li>
			<li>
				<form:label path="mem_name">이름</form:label>
				<form:input path="mem_name"/>
				<form:errors path="mem_name" cssClass="error-color"/>
			</li>
			<li>
				<form:label path="mem_pw">비밀번호</form:label>
				<form:password path="mem_pw"/>
				<form:errors path="mem_pw" cssClass="error-color"/>
			</li>
			<li>
				<form:label path="mem_nickname">닉네임</form:label>
				<form:input path="mem_nickname"/>
				<form:errors path="mem_nickname" cssClass="error-color"/>
			</li>
			<li>
				<form:label path="mem_phone">전화번호</form:label>
				<form:input path="mem_phone" placeholder="- 없이 숫자만 입력"/>
				<form:errors path="mem_phone" cssClass="error-color"/>
			</li>
			<li>
				<form:label path="mem_email">이메일</form:label>
				<form:input path="mem_email"/>
				<form:errors path="mem_email" cssClass="error-color"/>
			</li>
		</ul>
		<div class="align-center">
			<input type="button" value="취소" id="reg_cancel" class="default-btn" 
				onclick="location.href='${pageContext.request.contextPath}/main/main.do'">
			<form:button class="default-btn">회원가입</form:button>
		</div>
	</form:form>
</div>
<!-- 회원가입 끝 -->