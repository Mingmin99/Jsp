<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<style>
/* CSS 스타일 지정 */
body {
	margin: 0;
	padding: 0;
}

.header {
	background-color: #FFFFFF;
	padding: 5px;
}

.section {
	padding: 50px;
}

.footer {
	background-color: #333;
	color: #fff;
	padding: 20px;
	text-align: center;
}

/* 메뉴바 */
.navbar-nav .nav-item {
	margin-left: 40px;
}

.navbar-nav .nav-link {
	color: #000000;
}

.navbar {
	padding-top: 10px;
	padding-bottom: 10px;
}

.navbar-brand {
	margin-bottom: 10px;
}

.navbar-nav {
	margin-left: -30px;
}

.logo-img {
	margin-left: 40px;
	max-width: 100px;
	max-height: 100px;
}

.navbar {
	padding-top: 3px;
	padding-bottom: 3px;
}

.navbar-divider {
	border-top: 2px solid #009591;
	margin-top: 0;
	margin-bottom: 0;
	width: 100%;
}

.navbar-nav .nav-item:nth-child(6) {
	margin-left: 30px;
}

.section1 {
	background-color: #ffffff;
	height: 1000px;
}

.mypage {
	margin-top: 3%;
	margin-left: 5%;
	width: 40%;
	height: 100px;
	position: relative;
	background-color: #8BBCB9;
	display: flex;
	align-items: center;
	justify-content: center;
	border: 2px solid #ffffff; /* 보더 스타일 및 색상 설정 */
	border-radius: 50px;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.title {
	position: relative;
	font-size: 20px;
	color: #4D4D4D;
	font-family: 'Arial', sans-serif;
	text-transform: uppercase;
	letter-spacing: 1.5px;
}

.mypage-container {
	width: 60%;
	margin: auto;
	background-color: #FFFFFF;
	padding: 30px;
	border-radius: 8px;
	box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.1);
	margin-top: 60px;
}

h2 {
	color: #333;
	margin-bottom: 20px;
	text-align: center;
}

.form-group {
	margin-bottom: 20px;
}

.form-group label {
	color: #333;
	font-weight: bold;
	display: block;
	margin-bottom: 5px;
}

.form-group p {
	background-color: #E8E8E8;
	padding: 10px;
	border-radius: 5px;
	color: #555;
}

.button-container {
	text-align: center;
	margin-top: 30px;
}

.btn {
	background-color: #8298A6;
	color: #FFFFFF;
	font-size: 14px;
	font-weight: bold;
	border-radius: 30px;
	padding: 12px 40px;
	cursor: pointer;
	text-decoration: none;
	text-transform: uppercase;
	border: none;
}

.btn:hover {
	background-color: #6C8592;
}

/* 푸터 */
.BankFooter {
	background-color: #f7f7f7;
	padding: 20px;
	text-align: center;
}

.BankFooterContent {
	max-width: 800px;
	margin: 0 auto;
	margin-top: 30px;
	margin-left: -50px;
}

.FooterLinks {
	list-style: none;
	padding: 0;
	margin-bottom: 10px;
}

.FooterLinks li {
	display: inline-block;
	margin-right: 10px;
}

.FooterLinks li:last-child {
	margin-right: 0;
}

.FooterLinks a {
	color: #333;
	text-decoration: none;
	font-size: 14px;
}

.FooterDescription {
	color: #666;
	font-size: 12px;
}

.ContactItem {
	width: 250px;
	height: 40px;
	position: absolute;
	margin-right: 150px;
	right: 0;
}

.ContactTitle {
	width: 50px;
	height: 20px;
	text-align: right;
	color: #009591;
	font-size: 14px;
	font-family: Noto Sans KR;
	font-weight: 350;
	line-height: 10px; /* Increase line-height to add spacing */
	word-wrap: break-word;
	position: absolute;
	top: 2px;
	right: 30px;
}

.ContactNumber {
	width: 122.17px;
	height: 36px;
	text-align: right;
	color: #333333;
	font-size: 24px;
	font-family: Noto Sans KR;
	font-weight: 350;
	line-height: 24px;
	word-wrap: break-word;
	position: absolute;
	top: 19px;
}

.ContactNumber.Strong15881111 {
	left: 0;
	right: 30px;
}

.ContactSeparator {
	width: 9.12px;
	height: 36px;
	text-align: right;
	color: #DDDDDD;
	font-size: 24px;
	font-family: Noto Sans KR;
	font-weight: 350;
	line-height: 24px;
	word-wrap: break-word;
	position: absolute;
	top: 19px;
	left: 124.68px;
}

.ContactNumber.Strong15991111 {
	left: 105px;
}
</style>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css">
</head>
<body>
	<div class="header">
		<!-- 메뉴바 내용 -->
		<!-- 메뉴바 내용 -->
		<nav class="navbar navbar-expand-lg">
			<div class="container-fluid">
				<c:url var="logoUrl" value="/hanabank.jpg" />
				<a class="navbar-brand" href="mainHana.jsp"> <img
					src="${logoUrl}" alt="로고" class="logo-img">
				</a>

				<div class="collapse navbar-collapse justify-content-center"
					id="navbarSupportedContent">
					<ul class="navbar-nav mb-2 mb-lg-0">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="innerAccount.jsp">계좌조회</a></li>
						<li class="nav-item"><a class="nav-link"
							href="accountTransferInner.jsp">계좌이체</a></li>
						<li class="nav-item"><a class="nav-link"
							href="makeAccountSelect.jsp">계좌개설</a></li>
						<li class="nav-item"><a class="nav-link"
							href="transferInfo.jsp">거래내역조회</a></li>
						<li class="nav-item"><a class="nav-link" href="#">고객센터</a></li>
						<li class="nav-item"><a class="nav-link" href="mypage.jsp">마이페이지</a></li>
						<li class="nav-item" style="margin-right: -30px;"><a
							class="nav-link" href="login.jsp">로그인</a></li>
						<li class="nav-item"><a class="nav-link" href="signin.jsp">회원가입</a></li>
					</ul>
				</div>

				<form class="d-flex" role="search">
					<input class="form-control me-2" type="search" placeholder="Search"
						aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Search</button>
				</form>
			</div>
		</nav>



	</div>
	<hr class="navbar-divider">


	<div class="section1">

		<div class="mypage">

			<div class="title">
				안녕하세요! <br> 마이페이지에서 당신의 정보를 확인해보세요!
			</div>

		</div>


		<div class="mypage-container">
			<h2>나의 정보</h2>
			<div class="form-group">
				<label for="name">이름:</label>
				<p id="name">최민영</p>
			</div>

			<div class="form-group">
				<label for="id">아이디:</label>
				<p id="id">min</p>
			</div>

			<div class="form-group">
				<label for="personal_id">주민등록번호:</label>
				<p id="personal_id">991024-2******</p>
			</div>

			<div class="form-group">
				<label for="phone">전화번호:</label>
				<p id="phone">01071814426</p>
			</div>

			<div class="form-group">
				<label for="address">주소:</label>
				<p id="sample6_postcode">14246</p>
				<p id="sample6_address">경기 광명시 하안로 364</p>
				<p id="sample6_detailAddress">하안동</p>
			</div>

			<div class="form-group">
				<label for="email">이메일:</label>
				<p id="email">alsdud11737@naver.com</p>
			</div>

			<div class="button-container">
				<!-- <button type="button" onclick="editInfo()" class="btn btn-primary"
					style="background-color: #8298A6 !important; color: #ffffff !important; font-size: 15px !important; font-weight: bold !important; border-radius: 30px !important; padding: 12px 80px; cursor: pointer;">
					정보 수정</button> -->
			</div>
		</div>

	</div>


	<footer class="BankFooter">
		<div class="BankFooterContent">
			<ul class="FooterLinks">
				<li><a href="#">이용약관</a></li>
				<li><a href="#">개인정보처리방침</a></li>
				<li><a href="#">보안정책</a></li>
				<li><a href="#">고객센터</a></li>
			</ul>
			<div class="ContactItem">
				<div class="ContactTitle">고객센터</div>
				<div class="ContactNumber Strong15881111">1588-1111</div>
				<div class="ContactSeparator">/</div>
				<div class="ContactNumber Strong15991111">1599-1111</div>
			</div>

			<p class="FooterDescription">하나은행오픈뱅킹입니다.</p>
		</div>

	</footer>

	<!-- 부트스트랩 JavaScript 연결 -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.min.js"></script>
</body>
</html>
