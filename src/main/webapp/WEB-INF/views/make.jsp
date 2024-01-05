<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="/resources/css/make.css">
    <script src="/resources/js/make.js"></script>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Nanum+Brush+Script&display=swap" rel="stylesheet">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

</head>
<body>
    <section>
    <div class="layout">
        <form action="/writepro" method="post" enctype="multipart/form-data">
            <div class="image">
                <input type="file" name="file" accept="image/*" onchange="previewImage(this)" class="bt">
                <img id="preview" class="vimg"/>
            </div>
            <!-- make.jsp -->
            <div class="gender-buttons">
                <input type="radio" name="gender" id="female" value="암컷" />
                <label for="female">암컷</label>

                <input type="radio" name="gender" id="male" value="수컷" />
                <label for="male">수컷</label>
            </div>

            <div class="other">
                <div class="up">
                    <textarea class="name" name="title" placeholder=" 이름" type="text"></textarea>
                    <textarea class="animal" name="animal" placeholder=" 반려견 종류" type="text"></textarea>
                </div>
                    <textarea class="day" name="day" placeholder=" 마지막 날짜   (ex.. 2023-12-25, 오후 06:35)" type="text"></textarea>
                    <textarea class="location" name="location" placeholder=" 마지막 장소" type="text"></textarea>
                    <textarea class="content" name="content" placeholder=" 특이사항"></textarea>
                    <textarea class="callNumber" onclick="changeColor" name="callNumber" placeholder=" 연락받을 방법   (ex.. 전화번호 or 이메일 or SNS 계정)" type="text"></textarea>
                    <button class="submit" type="submit">게시하기</button>
            </div>
        </form>
    </div>
    </section>
</body>
</html>