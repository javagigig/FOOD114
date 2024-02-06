<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>발주 및 발송 관리 페이지</title>
    <style>
        /* 스타일링은 여기에 작성합니다 */
        .order-type {
            margin-bottom: 10px;
        }
        .order-status {
            display: flex;
            justify-content: space-between;
            margin-bottom: 10px;
        }
        .order-status div {
            flex: 1;
            text-align: center;
        }
        #orderChart {
            width: 600px;
            height: 400px;
            margin-top: 20px;
        }
         h1{
        	text-align: center;
        	/* font-family: sans-serif;
        	font-weight: bold; */
        }
         a {
	        text-decoration: none;
			color: black;
			font-weight: bold;
        }
    </style>
</head>
<body>
    <h1>발주(주문)확인/발송관리</h1>
    <br>
    <hr>
    <br>

    <!-- 주문 유형 선택 체크박스 -->
    <div class="order-type">
    <h2>| 발송관리</h2>
    <div>주문유형을 선택해주세요!</div><br>
        <label><input type="checkbox" name="orderType" value="normal" checked> 일반주문</label>
        <label><input type="checkbox" name="orderType" value="todayDeparture"> 오늘출발</label>
        <label><input type="checkbox" name="orderType" value="reservation"> 예약구매</label>
        <label><input type="checkbox" name="orderType" value="subscription"> 정기구독</label>
        <label><input type="checkbox" name="orderType" value="rental"> 렌탈</label>
        <label><input type="checkbox" name="orderType" value="arrivalGuaranteed"> 도착보장</label>
    </div>

    <!-- 선택건 적용 체크박스 -->
    <label><input type="checkbox" name="applyToSelected"> 선택건 적용</label>
	<br><br>
    <hr>
    <br>
    <!-- 주문 상태 목록 -->
    <div class="order-status">
        <div>
            <h3>배송준비</h3>
            <p id="readyOrders"><a href="#">0</a>건</p>
        </div>
        <div>
            <h3>배송중</h3>
            <p id="shippingOrders"><a href="#">0</a>건</p>
        </div>
        <div>
            <h3>배송완료</h3>
            <p id="completedOrders"><a href="#">0</a>건</p>
        </div>
        <div>
            <h3>반품요청</h3>
            <p id="returnRequests"><a href="#">0</a>건</p>
        </div>
        <div>
            <h3>교환요청</h3>
            <p id="exchangeRequests"><a href="#">0</a>건</p>
        </div>
    </div>
	<br>
    <hr>
    <br>
    <!-- 조회 기간 드롭다운 -->
   
    <h2>| 배송추이</h2>
    <h4>조회기간</h4>
    <select id="dateRange">
        <option value="today">오늘</option>
        <option value="1week">1주일</option>
        <option value="1month">1개월</option>
        <option value="3months">3개월</option>
    </select>
	
    <!-- 그래프를 그리기 위한 JavaScript 코드 -->
    <canvas id="orderChart"></canvas>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
        // 그래프 데이터
        const orderData = {
            labels: ['배송준비', '배송중', '배송완료', '반품요청', '교환요청'],
            datasets: [{
                label: '주문 상태',
                data: [0, 0, 0, 0, 0],
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                ],
                borderColor: [
                    'rgba(255, 99, 132, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                ],
                borderWidth: 1
            }]
        };

        // 그래프 설정
        const orderChartOptions = {
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        };

        // 주문 상태 그래프 생성
        const orderChartCanvas = document.getElementById('orderChart').getContext('2d');
        const orderChart = new Chart(orderChartCanvas, {
            type: 'bar',
            data: orderData,
            options: orderChartOptions
        });

        // 각 주문 상태에 대한 데이터 업데이트
        function updateOrderData() {
            // 여기서는 임시로 데이터를 초기화합니다.
            orderData.datasets[0].data = [10, 20, 30, 5, 8]; // 실제 데이터로 변경해야 합니다.

            // 그래프 업데이트
            orderChart.update();
        }

        // 페이지 로드 시 주문 데이터 업데이트
        window.onload = function() {
            updateOrderData();
        };
    </script>
</body>
</html>
