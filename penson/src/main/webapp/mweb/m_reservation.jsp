<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>호텔 & 펜션 예약시스템</title>
<link rel="shortcut icon" href="#">
<link rel="stylesheet" type="text/css" href="./css/m_index.css?v=1">
<link rel="stylesheet" type="text/css" href="./css/m_sub.css?v=1">
<link rel="stylesheet" type="text/css" href="./css/m_reservation.css?v=2">
<script src="./js/m_index.js?v=1"></script>
</head>
<body>
	<!-- 상단 시작 -->
	<%@ include file="./top.jsp" %>
	
	<main>
	<!-- 배너 시작 -->
	<%@ include file="./banner.jsp" %>
	<!-- 배너 끝 -->
	
	<!-- 중단 시작 -->
	<%@ include file="./reservation.jsp" %>	
	<!-- 중단 끝 -->
	
	<!-- 퀵 메뉴 시작 -->
	<%@ include file="./qmenu.jsp" %>	
	<!-- 퀵 메뉴 끝 -->
	</main>	
	
	<!-- 하단 시작 -->
	<footer>
	<%@ include file="./copy.jsp" %>	
	</footer>
</body>
</html>