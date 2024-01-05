<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&family=Nanum+Brush+Script&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="/resources/css/find.css">
    <script src="/resources/js/find.js"></script>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            $(".con:even").addClass("rotate-left");
            $(".con:odd").addClass("rotate-right");
        });
    </script>
</head>
<body>
        <div class="pan"></div>
<%--        <img class="it" src="resources/img/포스트잇2.png"/>--%>
            <a href="<%=request.getContextPath()%>/"><img class="main" src="resources/img/메인화면.png"/><div class="go1">▶&nbsp;바로가기 클릭</div></a>
<%--        <img class="it2" src="resources/img/포스트잇2.png"/>--%>
            <a href="<%=request.getContextPath()%>/make"><img class="make" src="resources/img/두번째 화면.png"/><div class="go2">▶&nbsp;바로가기 클릭</div></a>
<%--        <img class="it3" src="resources/img/포스트잇2.png"/>--%>
            <a href="<%=request.getContextPath()%>/make"><img class="tellme" src="resources/img/두번째 화면.png"/><div class="go3">▶&nbsp;바로가기 클릭</div></a>
        <img class="it4" src="resources/img/포스트잇2.png"/>

        <div class="sh">
            <button onclick="showSearchCategories()" style="display: none">검색</button>
                <div id="searchCategories" >
                    <select id="category">
                        <option value="name">이름</option>
                        <option value="animal">종류</option>
                        <option value="location">장소</option>
                    </select>
                    <input type="text" id="searchInput" placeholder="검색어를 입력하세요">
                    <button onclick="search()">검색</button>
                </div>
        </div>

        <div class="layout">
            <c:forEach var="board" items="${list}">
                <a  class="out" href="<%=request.getContextPath()%>/view?id=${board.id}">
                    <div class="con">
                        <img class="pin" src="/resources/img/핀.png"/>
                        <img class="box" src="/resources/${board.imagePath}"/>
                        <div class="ad">
                            <div id="name"><div class="one">이름&nbsp;&nbsp;:&nbsp;&nbsp;</div><div class="in">${board.title}</div></div>
                            <div id="sex">
                                <div class="two">성별&nbsp;&nbsp;:&nbsp;&nbsp;</div>
                                <div class="in" data-gender="${board.gender}">
                                        ${board.gender eq '암컷' ? '<span class="female">♀</span>' : (board.gender eq '수컷' ? '<span class="male">♂</span>' : '')}
                                </div>
                            </div>
                            <div id="what"><div class="three">종류&nbsp;&nbsp;:&nbsp;&nbsp;</div><div class="in">${board.animal}</div></div>
                            <div id="location"><div class="four">장소&nbsp;&nbsp;:&nbsp;&nbsp;</div><div class="in">${board.location}</div></div>
                        </div>
                    </div>
                </a>
            </c:forEach>
        </div>

</body>
</html>