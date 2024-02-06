<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>상품 관리</title>
    <style>
        /* 스타일링은 여기에 작성합니다 */
        .product-list {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            list-style-type: none;
            padding: 0;
        }
        .product {
            width: 200px;
            margin: 20px;
            padding: 10px;
            border: 1px solid #ccc;
            text-align: center;
        }
        .product img {
            width: 150px;
            height: 150px;
        }
        h1{
        	text-align: center;
        	/* font-family: sans-serif;
        	font-weight: bold; */
        }
    </style>
</head>
<body>
    <h1>상품 관리 페이지</h1>

    <!-- 판매중인 상품 목록 -->
    <br>
    <h2>| 판매중인 상품</h2>
    <hr>
    <ul class="product-list">
        <!-- 여기에 판매중인 상품 목록이 동적으로 추가될 예정 -->
        <!-- 예시로 3개의 상품을 추가합니다 -->
        <li class="product">
            <img src="../img/aa01.jpg" alt="Sale Product 1">
            <p>상품 설명 1</p>
        </li>
        <li class="product">
            <img src="../img/aa07.jpg" alt="Sale Product 2">
            <p>상품 설명 2</p>
        </li>
        <li class="product">
            <img src="../img/aa08.jpg" alt="Sale Product 3">
            <p>상품 설명 3</p>
        </li>
    </ul>
	<hr>
	<br><br><br><br>
    <!-- 품절 상품 목록 -->
    <h2>| 품절 상품</h2>
    <hr>
    <ul class="product-list">
        <!-- 여기에 품절 상품 목록이 동적으로 추가될 예정 -->
        <!-- 예시로 3개의 상품을 추가합니다 -->
        <!-- 예시로 추가한 상품은 품절 상태를 나타내기 위해 이미지를 사용합니다 -->
        <li class="product">
            <img src="../img/aa03.jpg" alt="Out of Stock 1">
            <p>상품 설명 1</p>
        </li>
        <li class="product">
            <img src="../img/aa06.jpg" alt="Out of Stock 2">
            <p>상품 설명 2</p>
        </li>
        <li class="product">
            <img src="../img/aa11.jpg" alt="Out of Stock 3">
            <p>상품 설명 3</p>
        </li>
    </ul>
	<hr>
	<br><br><br>
    <!-- 인기 상품, 최저가 상품, 기획전 상품 등의 목록도 비슷하게 추가할 수 있습니다 -->

    <!-- 새로운 상품 추가 폼 -->
    <h2>| 새로운 상품 추가</h2>
    <form action="add_product.php" method="post">
        <label for="product_name">상품명:</label>
        <input type="text" id="product_name" name="product_name" required><br>
        <label for="product_image">이미지 URL:</label>
        <input type="url" id="product_image" name="product_image" required><br>
        <label for="product_description">상품 설명:</label><br>
        <textarea id="product_description" name="product_description" rows="4" cols="50"></textarea><br>
        <input type="submit" value="상품 추가">
    </form>
</body>
</html>
