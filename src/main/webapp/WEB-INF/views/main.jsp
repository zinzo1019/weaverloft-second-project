<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="base_view/header.jsp" %>
<%@ include file="base_view/navigation.jsp" %>

<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<title>어디로 여행을 떠날까요?</title>

<style>
    .content {
        margin-left: 18%; /* 네비게이션 바의 넓이와 일치하도록 설정 */
        padding: 20px; /* 적절한 여백 */
        display: flex;
        justify-content: center; /* 가로 중앙 정렬 */
        margin-bottom: 5%;
        overflow-y: auto; /* 네비게이션 바 내용이 화면을 벗어날 경우 스크롤 바 추가 */
    }

    .main-container {
        width: 70%;
        padding: 20px; /* 내부 여백 추가 */
    }

    /* 검색창 컨테이너 스타일 */
    .search-container {
        display: flex;
        justify-content: center; /* 가로 중앙 정렬 */
    }

    /* 검색창 스타일 */
    .search-box {
        margin-top: 5%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        width: 90%;
    }

    /* 검색 버튼 스타일 */
    .search-button {
        margin-top: 5%;
        padding: 10px 20px;
        background-color: #333;
        color: white;
        border: none;
        border-radius: 5px;
        margin-left: 10px;
        cursor: pointer;
    }

    /* 검색창 컨테이너 스타일 */
    .travel-container {
        margin-top: 5%;
        margin-left: 1%;
    }

    .img-container {
        display: flex;
        gap: 30px;
        justify-content: space-between; /* 이미지 사이 여백을 나누어 정렬 */
    }

    .img {
        flex: 1;
        margin-bottom: 10px;
    }

    /* 이미지 비율을 1:1로 설정 */
    .img img {
        width: 90%;
        height: 300px;
        aspect-ratio: 1 / 1;
    }

</style>

<body>
<div class="content">
    <div class="main-container">
        <div class="search-container">
            <input type="text" class="search-box" placeholder="어디로 여행을 떠날까요?">
            <button class="search-button">검색</button>
        </div>
        <div class="travel-container">
            <h1>최근 뜨는 여행지</h1>
            <div class="img-container">
                <div class="img">
                    <img src="https://img.freepik.com/premium-photo/scene-of-flag-of-america-over-new-york-cityscape-river-side-which-location-is-lower-manhattan_41418-3340.jpg">
                    <p>미국</p>
                </div>

                <div class="img">
                    <img src="https://img.freepik.com/premium-photo/scene-of-flag-of-america-over-new-york-cityscape-river-side-which-location-is-lower-manhattan_41418-3340.jpg">
                    <p>미국</p>
                </div>
            </div> <br>

            <div class="img-container">
                <div class="img">
                    <img src="https://img.freepik.com/premium-photo/scene-of-flag-of-america-over-new-york-cityscape-river-side-which-location-is-lower-manhattan_41418-3340.jpg">
                    <p>미국</p>
                </div>

                <div class="img">
                    <img src="https://img.freepik.com/premium-photo/scene-of-flag-of-america-over-new-york-cityscape-river-side-which-location-is-lower-manhattan_41418-3340.jpg">
                    <p>미국</p>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
<%@ include file="base_view/footer.jsp" %>