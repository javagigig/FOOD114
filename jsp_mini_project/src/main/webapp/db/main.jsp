<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>

		*{
		    margin: 0px;
		    padding: 0px;
		}
		.bgimage{
		    background: linear-gradient(white, rgba(243, 223, 240, 0.55)),url("BG.jpg");
		    background-size: 100%;
		    width: 100%;
		    height: 100%;
		}
		.menu{
		    width: 100%;
		    height: 150px;
		    background-color: rgb(155, 123, 155);
		}
		.leftmenu{
		    width: 20%;
		    line-height: 100Px;
		    float: left;
		}
		.leftmenu h4{
		    padding-left: 70px;
		    font-weight: bold;
		    color: white;
		    font-size: 40px;
		    font-family: 'montserrat', sans-serif;
		}
		.rightmenu{
		    width: 60%;
		    height: 100Px;
		    float: right;
		    padding: 60px;
		}
		.rightmenu ul{
		    margin-left: 200px;
		}
		.rightmenu ul li{
		    display: inline-block;
		    font-family: 'montserrat', sans-serif ;
		    list-style: none;
		    font-size: 20px;
		    color: black;
		    font-weight: bold;
		    line-height: 100px;
		    margin-left: 40px;
		    text-transform: uppercase;
		    cursor: pointer;
		}
		.rightmenu ul li:hover{
		    color: white;
		}
		#firstlist{
		   color: white; 
		}
		.text{
		    width: 100%;
		    margin-top:120px ;
		    text-transform: uppercase;
		    text-align: center;
		    color: black;
		
		}
		.text h4{
		    font-size: 14px;
		    font-family: 'open sans', sans-serif;
		}
		.text h1{
		    font-size: 62px;
		    font-family: 'montserrat', sans-serif ;
		    font-weight: 700px;
		    margin: 14px 0px;
		}
		.text h3{
		    font-size: 15px;
		    font-family: 'open sans', sans-serif;
		}
		.btn{
		    background-color: rgba(86, 17, 100, 0.164);
		    color: white;
		    font-family: 'montserrat', sans-serif ;
		    border: none;
		    font-size: 15px;
		    font-weight: bold;
		    text-transform: uppercase;
		    line-height: 40px;
		    width: 150px;
		    margin-top: 25px;
		    border: 2px solid white;
		    cursor: pointer;
		}
		.btn:hover{
		    background-color: white;
		    color: black;
		}
		
		input[type="button"] {
		            background-color: #45a049;
		        }
		input[type="button"]:hover {
		            background-color: #45a049;
		        }


        .btnCart {
            padding: 10px; 
            height: 45px; 
            width: 230px;
            border: 1px solid rgb(214, 211, 211);
            border-radius: 3px;
            background-color: white;
        }
 /*
        ==================================
        */

        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        .container {
            width: 80%;
            margin: 0 auto;
        }
        header {
            background-color: #9b8596;
            color: #fff;
            padding: 20px 0;
            text-align: center;
        }
        nav {
            background-color: #f4f4f4;
            padding: 10px 0;
            text-align: center;
        }
        nav a {
            color: #333;
            text-decoration: none;
            padding: 10px 20px;
            margin: 0 5px;
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        nav a:hover {
            background-color: #ddd;
        }
        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            grid-gap: 20px;
            margin-top: 20px;
        }
        .product-item {
            background-color: #f9f9f9;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
        }
        .product-item img {
            width: 100%;
            border-radius: 5px;
        }
        .product-item h3 {
            margin-top: 10px;
            font-size: 16px;
        }
        .product-item p {
            color: #666;
            font-size: 14px;
        }
        .footer {
            position: fixed;
            left: 0;
            bottom: 0;
            width: 100%;
            background-color: rgb(155, 123, 155);
            color: white;
            text-align: center;
            padding: 20px;
        }
    </style>
</head>
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
            <h1> THEJOEUN SHOPPING </h1>
            <h2> 사는 즐거움! 트렌디한 상품부터 더조은이 엄선한 단독 인기 상품까지 </h2>
            <a href="user_login.jsp"><button class="btn"> login</button></a>
            <a href="login.jsp"><button class="btn"> 회원가입</button></a>
            <br><br><br><br>
        </div>
        <section class="products">
            <div class="container">
                <h2>실시간 랭킹 HOT | 오늘 가장 많이 검색했어요</h2>
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
                <h2>오늘의 발견 | 더조은이 엄선한 단독 인기 상품</h2>
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
        <p>&copy; 2024 고객 관리 프로그램. All rights reserved.</p>
      </footer>
</body>
</html>