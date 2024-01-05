<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Nanum+Brush+Script&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/resources/css/back.css">
    <script src="/resources/js/back.js"></script>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>
<body>
    <section>
        <img class="letter" src="/resources/img/편지3.png"/>
        <img class="stamp" src="/resources/img/등록완료.png"/>
        <img class="tam" src="/resources/img/도장.png"/>

        <div class="one"><a class="go" href="<%=request.getContextPath()%>/find">▶ 게시글 보러가기</a><div class="tail">ㅡ</div><img class="white" src="/resources/img/비행기.png"/></div>
        <div class="two"><a class="plus" href="<%=request.getContextPath()%>/make">✚ 추가로 등록하기</a><div class="ail">ㅡ</div><img class="black" src="/resources/img/비행기2.png"/></div>
    </section>


</body>
</html>