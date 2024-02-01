<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>더조은 스마트센터</title>
  <style>
    body, html {
  margin: 0;
  padding: 0;
  font-family: Arial, sans-serif;
  height: 100%;
}

.header {
  background-color: #9b8596;
  color: white;
  padding: 20px;
  text-align: center;
}
.container {
  display: flex;
  min-height: 100%;
}

.sidebar {
  width: 10%;
  background-color: #f4f4f4;
  padding: 20px;
  text-align: center;
}

.sidebar h2 {
  margin-bottom: 20px;
}

.sidebar-menu {
  list-style-type: none;
  padding: 0;
}

.sidebar-menu li {
  margin-bottom: 10px;
}

.sidebar-menu li a {
  display: block;
  padding: 10px 15px;
  background-color: #ddd;
  color: #333;
  text-decoration: none;
  border-radius: 4px;
  transition: background-color 0.3s ease;
}

.sidebar-menu li a:hover {
  background-color: #b6afb4;
  color: white;
}

.main-content {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  width: 80%;
  padding: 20px;
}

.section-container {
  width: 80%;
  display: flex;
  justify-content: space-between;
  margin-bottom: 10px;

}

.section {
  background-color: white;
  padding: 40px;
  margin-bottom: 20px;
  text-align: center;
  border: 1px solid #b6adb4; 
  border-radius: 8px; 
  width:300px;
  margin: 10px;
  /* display: inline-block; /* 인라인 블록 요소로 배치 */
  /* box-sizing: border-box; /* 테두리와 안쪽 여백을 포함하여 크기를 계산합니다. */
}

.section h2 {
  margin-bottom: 10px;
}

.section-link {
  float: inline-start;
  padding: 10px 5px;
  background-color:white;
  color: gray;
  font-weight: bold;
  text-decoration: none;
  border-radius: 5px;
  transition: background-color 0.3s ease;
  margin: 5px;
  width: 180px;
  text-align: left;
}

.section-link2 {
  float: right;
  padding: 10px 5px;
  background-color: white;
  color: gray;
  border-radius: 5px;
  transition: background-color 0.3s ease;
  width: 30px;
  height: 20px;
  text-align: left;
  text-decoration: none;
  font-size: 15px;
}

.section-link:hover {
  background-color: #e6e2e5;
}

li {
  list-style: none;
}

/* 각 섹션 별로 추가 스타일링 */
.section1 {
  background-color: #ffcccc;
}

.section2 {
  background-color: #ccffcc;
}

.section3 {
  background-color: #ccccff;
}

.section4 {
  background-color: #ffffcc;
}

.footer {
  position: fixed;
  left: 0;
  bottom: 0;
  width: 100%;
  background-color: #333;
  color: white;
  text-align: center;
  padding: 20px;
}

.submit {
  border: 1px solid gray;
  border-radius: 3px;
}
.submit:hover{
  background-color: #b6afb4;
  color:white;
  border: 1px solid #b6afb4;
}

  </style>
   <title>더조은 고객관리 프로그램</title>
  <link rel="stylesheet" href="styles.css">
</head>
<body>
  <header class="header">
    <h1>더조은 스마트센터 관리자 페이지</h1>
  </header>
  <div class="container">
    <div class="sidebar">
      <!-- 사이드바 내용 -->
      <!-- width: calc(50% - 5px); -->
      <h2>관리자님</h2>
      <input type="submit" class="submit" value="로그아웃">
      <ul class="sidebar-menu">
        <li><a href="m_user.jsp">고객관리</a></li>
        <li><a href="#section1">상품관리</a></li>
        <li><a href="#section2">주문관리</a></li>
        <li><a href="#section4">결재관리</a></li>
        <li><a href="#section5">배송관리</a></li>
        <li><a href="#section6">취소/교환/환불</a></li>
        <li><a href="#section6">리뷰관리</a></li>
      </ul>
    </div>
    <div class="main-content">
      <!-- 센터 내용 -->
      <div class="section-container">
        <section id="section1" class="section">
          <div><h2>상품관리</h2></div>
          <br>
          <!-- 섹션 1 내용 -->
              <p class="section-link">판매중인 상품<a href="#" class="section-link2">0건</a>
              <p class="section-link">품절 상품<a href="#" class="section-link2">0건</a>
              <p class="section-link">인기 상품<a href="#" class="section-link2">0건</a>
              <p class="section-link">최저가 상품<a href="#" class="section-link2">0건</a>
              <p class="section-link">기획전 상품<a href="#" class="section-link2">0건</a>
        </section>
        <section id="section2" class="section">
          <h2>주문관리</h2>
          <br>
          <!-- 섹션 2 내용 -->
            <p class="section-link">신규주문<a href="#" class="section-link2">0건</a>
            <p class="section-link">구매확정<a href="#" class="section-link2">0건</a>
            <p class="section-link">발송관리<a href="#" class="section-link2">0건</a>
            <p class="section-link">정기구독<a href="#" class="section-link2">0건</a>
          </section>
      </div>
      <div class="section-container">
        <section id="section3" class="section">
          <h2>배송/교환/환불관리</h2>
          <br>
          <!-- 섹션 3 내용 -->
            <p class="section-link">배송준비<a href="#" class="section-link2">0건</a>
            <p class="section-link">배송중<a href="#" class="section-link2">0건</a>
            <p class="section-link">배송완료<a href="#" class="section-link2">0건</a>
            <p class="section-link">반품요청</p><a href="#" class="section-link2">0건</a>
            <p class="section-link">교환요청<a href="#" class="section-link2">0건</a>
        </section>
        <section id="section4" class="section">
          <h2>결재관리</h2>
          <br>
          <!-- 섹션 4 내용 -->
            <p class="section-link">결제대기<a href="#" class="section-link2">0건</a>
            <p class="section-link">결제건수<a href="#" class="section-link2">0건</a>
            <p class="section-link">결제자수<a href="#" class="section-link2">0건</a>
            <p class="section-link">결제금액<a href="#" class="section-link2">0건</a>
            <p class="section-link">매출통계<a href="#" class="section-link2">0건</a>
        </section>
    </div>
  </div>
  <footer class="footer">
    <p>&copy; 2024 더조은 고객 관리 프로그램 All rights reserved.</p>
  </footer>
</body>
</html>
<script>
  
</script>
