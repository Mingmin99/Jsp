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
	margin-left: 50px;
}

.navbar-nav .nav-link {
	color: #000000;
}

.navbar {
	padding-top: 10px; /* 헤더 상단 여백 조절 */
	padding-bottom: 10px; /* 헤더 하단 여백 조절 */
}

.navbar-brand {
	margin-left: 50px; /* 로고 이미지와 메뉴 간격 조절 */
}

.navbar-nav {
	margin-left: -50px; /* 메뉴 간격 조절 */
}

.logo-img {
	margin-left: 80px;
	max-width: 100px;
	max-height: 100px;
}

.navbar {
	padding-top: 3px; /* 헤더 상단 여백 조절 */
	padding-bottom: 3px; /* 헤더 하단 여백 조절 */
}

.navbar-divider {
	border-top: 2px solid #009591;
	margin-top: 0;
	margin-bottom: 0;
	width: 100%;
}

.section1 {
	background-color: #FFFFFF;
	height: 800px;
}

.transfer-info {
	width: 100%;
	height: 150px;
	position: relative;
}

/* .title {
	left: 180px;
	top: 45px;
	position: absolute;
	text-align: center;
	color: black;
	font-size: 30px;
	font-family: Noto Sans KR;
} */
.title {
	left: 180px;
	top: 45px;
	position: absolute;
	text-align: center;
	color: #419390;
	font-size: 30px;
	font-weight: 500;
	font-family: Noto Sans KR;
	display: inline-block;
	white-space: nowrap;
	text-shadow: 0.5px 0.5px rgba(0, 0, 0, 0.3);
}

.title2 {
	font-size: 25px;
	color: black;
	font-weight: normal;
	display: inline-block;
	font-family: Noto Sans KR;
	margin-left: 5px;
	font-weight: normal; /* 필요한 간격 조정 */
	text-shadow: none;
	transform: none;
}

/* 은행선택 */
.select_bank {
	left: 360px;
	top: 40px;
	position: absolute;
}

.btn-group {
	display: flex;
	gap: 10px;
}

.btn-group .btn {
	font-size: 18px;
	font-family: Inter, sans-serif;
	font-weight: 500;
	line-height: 1.5;
	padding: 10px 20px;
	border-radius: 30px;
	background-color: #f7f7f7;
	color: #080C0C;
	transition: background-color 0.3s, color 0.3s;
	border: 2px solid #f7f7f7;
}

.btn-group .btn:hover, .btn-group .btn:focus {
	background-color: #419390;
	color: #ffffff;
	border-color: #419390;
}

table {
	width: 80%;
	margin: 0 auto;
	background-color: #fff;
	border-collapse: collapse;
	border: 1px solid #ddd;
	margin-top: -30px;
}

th, td {
	padding: 10px;
	text-align: left;
	border-bottom: 1px solid #ddd;
}

th {
	background-color: #419390;
	color: #fff;
	font-weight: bold;
}

tr:hover {
	background-color: #f9f9f9;
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
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="transferInfo.jsp">거래내역조회</a></li>
						<li class="nav-item"><a class="nav-link"
							href="accountTransferInner.jsp">계좌이체</a></li>
						<li class="nav-item"><a class="nav-link"
							href="makeAccountSelect.jsp">계좌개설</a></li>
						<li class="nav-item"><a class="nav-link" href="#">고객센터</a></li>
						<li class="nav-item"><a class="nav-link" href="#">마이페이지</a></li>
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



		<div class="transfer-info">
			<div class="title">
				부자가 되고 말테야
				<div class="title2">계좌의 거래내역</div>
			</div>

			<!-- <div class="select_bank">
				<div class="btn-group" role="group" aria-label="Select Bank">
					<button type="button" class="btn btn-secondary"
						onclick="location.href='transferInfo.jsp'">All</button>
					<button type="button" class="btn btn-secondary"
						onclick="location.href='transferInfo.jsp'">하나은행</button>
					<button type="button" class="btn btn-secondary"
						onclick="location.href='transferInfo.jsp'">다른은행</button>
				</div>
			</div>
 -->
		</div>


		<table>
			<thead>
				<tr>
					<th>번호</th>
					<th>내계좌</th>
					<th>상대계좌</th>
					<th>거래구분</th>
					<th>거래금액</th>
					<th>내용</th>
					<th>거래일자</th>
					<th>거래시간</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${transactionList}" var="transaction">
					<tr>
						<td>${transaction.id}</td>
						<td>${transaction.myAccount}</td>
						<td>${transaction.otherAccount}</td>
						<td>${transaction.transactionType}</td>
						<td>${transaction.amount}</td>
						<td>${transaction.description}</td>
						<td>${transaction.date}</td>
						<td>${transaction.time}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>


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