<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>주문 관리 페이지</title>
    <style>
        /* 스타일링은 여기에 작성합니다 */
        .order-list {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            list-style-type: none;
            padding: 0;
        }
        .order {
            width: 200px;
            margin: 20px;
            padding: 10px;
            border: 1px solid #ccc;
            text-align: center;
        }
        .order img {
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
    <h1>주문 관리</h1>
	<hr>
    <!-- 신규 주문 목록 -->
    <h2>| 신규 주문</h2>
    <ul class="order-list">
        <!-- 여기에 신규 주문 목록이 동적으로 추가될 예정 -->
        <!-- 예시로 3개의 주문을 추가합니다 -->
        <li class="order">
            <img src="../img/aa01.jpg" alt="New Order 1">
            <p>주문 설명 1</p>
        </li>
        <li class="order">
            <img src="../img/aa08.jpg" alt="New Order 2">
            <p>주문 설명 2</p>
        </li>
        <li class="order">
            <img src="../img/aa11.jpg" alt="New Order 3">
            <p>주문 설명 3</p>
        </li>
    </ul>
	<hr>
	<br><br>
	<h2>| 구매확정</h2>
    <ul class="order-list">
        <!-- 여기에 구매확정 주문 목록이 동적으로 추가될 예정 -->
    </ul>
	<hr>
	<br><br>
    <!-- 발송관리 주문 목록 -->
    <h2>| 발송관리</h2>
    <ul class="order-list">
        <!-- 여기에 발송관리 주문 목록이 동적으로 추가될 예정 -->
    </ul>
	<hr>
	<br><br>
    <!-- 정기구독 주문 목록 -->
    <h2>| 정기구독</h2>
    <ul class="order-list">
        <!-- 여기에 정기구독 주문 목록이 동적으로 추가될 예정 -->
    </ul>
	<hr>
	<br>
    <!-- 구매 확정, 발송 관리, 정기 구독 등의 목록도 비슷하게 추가할 수 있습니다 -->

    <!-- 새로운 주문 추가 폼 -->
    <h2>| 새로운 주문 추가</h2>
    <form action="add_order.php" method="post">
        <label for="order_name">주문명:</label>
        <input type="text" id="order_name" name="order_name" required><br>
        <label for="order_image">이미지 URL:</label>
        <input type="url" id="order_image" name="order_image" required><br>
        <label for="order_description">주문 설명:</label><br>
        <textarea id="order_description" name="order_description" rows="4" cols="50"></textarea><br>
        <input type="submit" value="주문 추가">
    </form>
</body>
</html>
