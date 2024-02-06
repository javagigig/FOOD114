<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<link rel="stylesheet" href="../css/crm_login_page.css">
<body>

    <div class="bgimage">
        <div class="menu">

            <div class="leftmenu">
                <a href="#" style="text-decoration: none;"><h4> THEJOEUN </h4></a>
            </div>

            <div class="rightmenu">
                <ul>
                    <li id="firstlist">Home</li>
                    <li>신상품</li>
                    <li>베스트</li>
                    <li>특가/혜택</li>
                    <li>브랜드관</li>
                    <li>기획전</li>
                </ul>
            </div>

        </div>
        <div class="text">
            <h1 class="box"> THEJOEUN SHOPPING </h1>
            <h2> 사는 즐거움이 한가득! 트렌디한 상품부터 더조은이 엄선한 단독 인기 상품까지 </h2>
            <a href="user_login.jsp"><button onclick="login()" class="btn"> login</button></a>
            <a href="login.jsp"><button onclick="join()" class="btn"> 회원가입</button></a>
            <br><br><br><br>
        </div>
        <section class="products">
            <div class="container">
                <h2>실시간 랭킹 HOT🔥 | 오늘 가장 많이 검색했어요</h2>
                <div class="product-grid">
                    <div class="product-item">
                        <a href="#"><img src="../img/aa01.jpg" alt="Product 1"></a>
                        <h3>[ Apple Watch ] 애플워치9</h3>
                        <p style="font-weight: bold; font-size: 17px; color: red;">499,000원 &nbsp&nbsp<span style="color: rgb(51, 111, 129); font-size: 13px;">⚡번개배송 상품</span></p>
                        <button class="btnCart">🛒담기</button>
                    </div>
                    <div class="product-item">
                        <a href="#"><img src="../img/aa03.jpg" alt="Product 2"></a>
                        <h3>[ SAMSUNG ] BESPOKE제트봇</h3>
                        <p style="font-weight: bold; font-size: 17px; color: red;">336,000원&nbsp&nbsp<span style="color: rgb(51, 111, 129); font-size: 13px;">⚡번개배송 상품</span></p>
                        <button class="btnCart">🛒담기</button>
                    </div>
                    <div class="product-item">
                        <a href="#"><img src="../img/aa04.jpg" alt="Product 1"></a>
                        <h3>[ BALMUDA ] New 더 토스터</h3>
                        <p style="font-weight: bold; font-size: 17px; color: red;">299,000원&nbsp&nbsp<span style="color: rgb(51, 111, 129); font-size: 13px;">⚡번개배송 상품</span></p>
                        <button class="btnCart">🛒담기</button>
                    </div>
                    <div class="product-item">
                        <a href="#"><img src="../img/aa05.jpg" alt="Product 1"></a>
                        <h3>[ BALMUDA ] 더 플레이트 프로</h3>
                        <p style="font-weight: bold; font-size: 17px; color: red;">578,000원&nbsp&nbsp<span style="color: rgb(51, 111, 129); font-size: 13px;">⚡번개배송 상품</span></p>
                        <button class="btnCart">🛒담기</button>
                    </div>
                    <div class="product-item">
                        <a href="#"><img src="../img/aa06.jpg" alt="Product 1"></a>
                        <h3>[ BALMUDA ] 더 플레이트 프로</h3>
                        <p style="font-weight: bold; font-size: 17px; color: red;">578,000원&nbsp&nbsp<span style="color: rgb(51, 111, 129); font-size: 13px;">⚡번개배송 상품</span></p>
                        <button class="btnCart">🛒담기</button>
                    </div>
                </div>
            </div>
        </section>
            <br><br><br>
        <section class="products">
            <div class="container">
                <h2>오늘의 발견💫 | 더조은이 엄선한 단독 인기 상품</h2>
                <div class="product-grid">
                    <div class="product-item">
                        <a href="#"><img src="../img/aa11.jpg" alt="Product 1"></a>
                        <h3>[ Apple Watch ] 애플워치9</h3>
                        <p style="font-weight: bold; font-size: 17px; color: red;">499,000원 &nbsp&nbsp<span style="color: rgb(51, 111, 129); font-size: 13px;">⚡번개배송 상품</span></p>
                        <button class="btnCart">🛒담기</button>
                    </div>
                    <div class="product-item">
                        <a href="#"><img src="../img/aa08.jpg" alt="Product 2"></a>
                        <h3>[ SAMSUNG ] BESPOKE제트봇</h3>
                        <p style="font-weight: bold; font-size: 17px; color: red;">336,000원&nbsp&nbsp<span style="color: rgb(51, 111, 129); font-size: 13px;">⚡번개배송 상품</span></p>
                        <button class="btnCart">🛒담기</button>
                    </div>
                    <div class="product-item">
                        <a href="#"><img src="../img/aa10.jpg" alt="Product 1"></a>
                        <h3>[ BALMUDA ] New 더 토스터</h3>
                        <p style="font-weight: bold; font-size: 17px; color: red;">299,000원&nbsp&nbsp<span style="color: rgb(51, 111, 129); font-size: 13px;">⚡번개배송 상품</span></p>
                        <button class="btnCart">🛒담기</button>
                    </div>
                    <div class="product-item">
                        <a href="#"><img src="../img/aa12.jpg" alt="Product 1"></a>
                        <h3>[ BALMUDA ] 더 플레이트 프로</h3>
                        <p style="font-weight: bold; font-size: 17px; color: red;">578,000원&nbsp&nbsp<span style="color: rgb(51, 111, 129); font-size: 13px;">⚡번개배송 상품</span></p>
                        <button class="btnCart">🛒담기</button>
                    </div>
                    <div class="product-item">
                        <a href="#"><img src="../img/aa13.jpg" alt="Product 1"></a>
                        <h3>[ BALMUDA ] 더 플레이트 프로</h3>
                        <p style="font-weight: bold; font-size: 17px; color: red;">578,000원&nbsp&nbsp<span style="color: rgb(51, 111, 129); font-size: 13px;">⚡번개배송 상품</span></p>
                        <button class="btnCart">🛒담기</button>
                    </div>
                </div>
            </div>
        </section>
    </div>
    <footer class="footer">
    	<p>사이버몰 내 판매되는 상품 중에는 THEJOEUN(더조은)에 등록한 개별 판매자가 판매하는 마켓플레이스(오픈마켓) 상품이 포함되어 있습니다.</p>
    	<p>마켓플레이스(오픈마켓) 상품의 경우 THEJOEUN(더조은)은 통신판매중개자이며 통신판매의 당사자가 아닙니다.</p>
    	<p>THEJOEUN(더조은)은 마켓플레이스(오픈마켓) 상품, 거래정보 및 거래 등에 대하여 책임을 지지 않습니다.</p>
    	<p>THEJOEUN(더조은)은 소비자 보호와 안전거래를 위해 신뢰관리센터(CM112@thejoeun.com)를 운영하고 있으며, 관련 분쟁이 발생할 경우 별도의 분쟁 처리절차에 의거 분쟁이 처리됩니다.</p>
    	<br>
        <p>THEJOEUN SHOPPING. Copyright © THEJOEUN Corp. All rights reserved.</p>
      </footer>
</body>
</html>
<script>
    window.onload = function login() {
        // 페이지가 로드될 때 실행되는 함수
        var isLoggedIn = checkLoginStatus(); // 로그인 상태 확인

        if (isLoggedIn) {
            // 로그인 상태일 때
            var loginButton = document.querySelector('a[href="user_login.jsp"]');
            var registerButton = document.querySelector('a[href="login.jsp"]');

            if (loginButton) {
                loginButton.style.display = 'none'; // 로그인 버튼 숨기기
            }

            if (registerButton) {
                registerButton.style.display = 'none'; // 회원가입 버튼 숨기기
            }
        }
    }

    // 로그인 상태를 확인하는 함수
    function checkLoginStatus() {
        // 여기서 로그인 상태를 확인하고, 로그인이 되어있으면 true를 반환합니다.
        // 예시로 세션을 이용하여 로그인 상태를 확인할 수 있습니다.
        // 실제 상황에 맞게 수정해주세요.
        var isLoggedIn = false; // 기본값은 로그아웃 상태

        // 로그인 상태를 확인하는 코드
        // 예시: 세션을 확인하여 로그인 상태인지 여부를 판단합니다.
        // 세션에 로그인 정보가 있다면 true로 설정합니다.

        return isLoggedIn;
    }
</script>
