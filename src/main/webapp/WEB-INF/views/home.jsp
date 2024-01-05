<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Nanum+Brush+Script&display=swap" rel="stylesheet">
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

    <link rel="stylesheet" href="/resources/css/home.css">
    <script src="/resources/js/home.js"></script>
</head>
<body>

    <section>
        <h1>"가족"을</h1>
        <h1 class="h1">찾습니다</h1>
        <img class="kid" src="/resources/img/아이.png"/>
        <img class="dog" src="/resources/img/개.png"/>
        <div class="container">
            <a href="<%=request.getContextPath()%>/make" style="background-image: url('/resources/img/구름.png')" class="in1"><div class="font1">등록해주세요</div></a>
            <a href="<%=request.getContextPath()%>/find" style="background-image: url('/resources/img/구름.png')" class="in2"><div class="font2">찾아주세요</div></a>
            <a href="#" style="background-image: url('/resources/img/구름.png')" class="in3"><div class="font3">알려주세요</div></a>
        </div>
    </section>




</body>
</html>