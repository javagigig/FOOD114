<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>더조은 스마트센터</title>
</head>
<link rel="stylesheet" href="../css/crm_login_page.css">
<body>
  <div id="container">
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
          <li><a href="crm_item.jsp">상품관리</a></li>
          <li><a href="crm_order.jsp">주문관리</a></li>
          <li><a href="crm_payment.jsp">결제관리</a></li>
          <li><a href="crm_shipping.jsp">배송관리</a></li>
          <li><a href="crm_cancel.jsp">취소/교환/환불</a></li>
          <li><a href="board_list.jsp">리뷰관리</a></li>
        </ul>
      </div>
      <div class="main-content">
        <!-- 센터 내용 -->
        <div class="section-container">
          <section class="section section1">
            <div>
              <a href="crm_item.jsp"><h2>상품관리</h2></a>
            </div>
            <br>
            <!-- 섹션 1 내용 -->
            <p class="section-link">판매중인 상품<a href="#" class="section-link2">0건</a></p>
            <p class="section-link">품절 상품<a href="#" class="section-link2">0건</a></p>
            <p class="section-link">인기 상품<a href="#" class="section-link2">0건</a></p>
            <p class="section-link">최저가 상품<a href="#" class="section-link2">0건</a></p>
            <p class="section-link">기획전 상품<a href="#" class="section-link2">0건</a></p>
          </section>
          <section class="section section2">
            <a href="crm_order.jsp"><h2>주문관리</h2></a>
            <br>
            <!-- 섹션 2 내용 -->
            <p class="section-link">신규주문<a href="#" class="section-link2">0건</a></p>
            <p class="section-link">구매확정<a href="#" class="section-link2">0건</a></p>
            <p class="section-link">발송관리<a href="#" class="section-link2">0건</a></p>
            <p class="section-link">정기구독<a href="#" class="section-link2">0건</a></p>
            <p class="section-link">정기구독<a href="#" class="section-link2">0건</a></p>
          </section>
        </div>
        <div class="section-container">
          <section class="section section3">
            <a href="crm_shipping.jsp"><h2>배송관리</h2></a>
            <br>
            <!-- 섹션 3 내용 -->
            <p class="section-link">배송준비<a href="#" class="section-link2">0건</a></p>
            <p class="section-link">배송중<a href="#" class="section-link2">0건</a></p>
            <p class="section-link">배송완료<a href="#" class="section-link2">0건</a></p>
            <p class="section-link">반품요청<a href="#" class="section-link2">0건</a></p>
            <p class="section-link">교환요청<a href="#" class="section-link2">0건</a></p>
          </section>
          <section class="section section4">
            <a href="crm_payment.jsp"><h2>결제관리</h2></a>
            <br>
            <!-- 섹션 4 내용 -->
            <p class="section-link">결제대기<a href="#" class="section-link2">0건</a></p>
            <p class="section-link">결제건수<a href="#" class="section-link2">0건</a></p>
            <p class="section-link">결제자수<a href="#" class="section-link2">0건</a></p>
            <p class="section-link">결제금액<a href="#" class="section-link2">0건</a></p>
            <p class="section-link">매출통계<a href="#" class="section-link2">0건</a></p>
          </section>
        </div>
   
        		
          <div class="review">
            <a href="board_list.jsp"><h2>리뷰관리</h2></a>
            <div>배송준비배송준비배송준비배송준비배송준비배송준비배송준비</div>
            <div>배송중중배송중중배송중중배송중중배송중중배송중중배송중중</div>
            <div>배송완료배송완료배송완료배송완료배송완료배송완료배송완료</div>
            <div>반품요청반품요청반품요청반품요청반품요청반품요청반품요청</div>
            <div>교환요청교환요청교환요청교환요청교환요청교환요청교환요청</div>
            <div class="imgBox" img src="../img/aa01.jpg">
            <!-- 이게 오른쪽에 위치한 거 --></div>
          </div>
		
          
          <div class="review2">
            <a href="crm_item.jsp"><h2>상품관리</h2></a>
            <div>배송준비배송준비배송준비배송준비배송준비배송준비배송준비</div>
            <div>배송중중배송중중배송중중배송중중배송중중배송중중배송중중</div>
            <div>배송완료배송완료배송완료배송완료배송완료배송완료배송완료</div>
            <div>반품요청반품요청반품요청반품요청반품요청반품요청반품요청</div>
            <div>교환요청교환요청교환요청교환요청교환요청교환요청교환요청</div>
            <div class="imgBox2">그림
            </div>
          </div>
      </div>
      <footer class="footer">
        <p>&copy; 2024 더조은 고객 관리 프로그램 All rights reserved.</p>
      </footer>
    </div>
</body>

</html>
<script>

</script>