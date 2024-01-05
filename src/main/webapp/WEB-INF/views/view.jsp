<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Nanum+Brush+Script&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/resources/css/view.css">
    <script src="/resources/js/view.js"></script>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
</head>

<body>
    <img class="img" src="/resources/${board.imagePath}"/>
    <div class="gender" data-gender="${board.gender}">
        ${board.gender eq '암컷' ? '<span class="female">♀</span>' : (board.gender eq '수컷' ? '<span class="male">♂</span>' : '')}
    </div>
    <div class="info"></div>
    <div class="info2"></div>
    <div class="line">ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ</div>
    <img class="red" src="/resources/img/빨.png"/>
    <img class="orange" src="/resources/img/주.png"/>
    <img class="yellow" src="/resources/img/노.png"/>
    <img class="green" src="/resources/img/초.png"/>
    <img class="blue" src="/resources/img/파.png"/>
    <img class="pupple" src="/resources/img/보.png"/>
    <img class="foot" src="/resources/img/발자국.png"/>
    <img class="foot2" src="/resources/img/발자국.png"/>
    <img class="bal" src="/resources/img/발자국2.png"/>
    <div class="other">
        <div class="name"><div class="in">이름&nbsp;:&nbsp;</div>${board.title}</div>
            <div class="what"><div class="in">반려견 종류&nbsp;:&nbsp;</div>${board.animal}</div>
            <div class="day"><div class="in">마지막 날짜&nbsp;:&nbsp;</div>${board.day}</div>
            <div class="location"><div class="in">마지막 장소&nbsp;:&nbsp;</div>${board.location}</div>
            <div class="special"><div class="in">특이사항&nbsp;:&nbsp;</div>${board.content}</div>
            <div class="call"><div class="in">연락받을 곳&nbsp;:&nbsp;</div>${board.callNumber}</div>
    </div>
        <a class="delete" href="<%=request.getContextPath()%>/delete?id=${board.id}">🗑️글삭제</a>

</body>
</html>