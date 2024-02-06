<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>결제 관리 페이지</title>
    <style>
        /* 스타일링은 여기에 작성합니다 */
        .payment-list {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            list-style-type: none;
            padding: 0;
        }
        .payment {
            width: 200px;
            margin: 20px;
            padding: 10px;
            border: 1px solid #ccc;
            text-align: center;
        }
        .payment img {
            width: 150px;
            height: 150px;
        }
        #salesChart {
            width: 600px;
            height: 400px;
            margin-top: 20px;
        }
         h1{
        	text-align: center;
        	/* font-family: sans-serif;
        	font-weight: bold; */
        }
    </style>
</head>
<body>
    <h1>| 결제 관리</h1>

    <!-- 결제대기 목록 -->
    <h2>| 결제대기</h2>
    <ul class="payment-list">
        <!-- 여기에 결제대기 목록이 동적으로 추가될 예정 -->
    </ul>
	<hr>
	<br><br>
    <!-- 결제건수 목록 -->
    <h2>| 결제건수</h2>
    <ul class="payment-list">
        <!-- 여기에 결제건수 목록이 동적으로 추가될 예정 -->
    </ul>
	<hr>
	<br>
    <!-- 결제자수 목록 -->
    <h2>| 결제자수</h2>
    <ul class="payment-list">
        <!-- 여기에 결제자수 목록이 동적으로 추가될 예정 -->
    </ul>
	<hr>
	<br>
    <!-- 결제금액 목록 -->
    <h2>| 결제금액</h2>
    <ul class="payment-list">
        <!-- 여기에 결제금액 목록이 동적으로 추가될 예정 -->
    </ul>
	<hr>
	<br>
    <!-- 매출통계 -->
    <h2>| 매출통계</h2>
    <canvas id="salesChart"></canvas>
	<hr>
	<br>
    <!-- 새로운 정보 추가 폼 -->
    <h2>| 새로운 정보 추가</h2>
    <form action="add_payment.php" method="post">
        <!-- 필요한 입력 필드들을 추가하세요 -->
        <input type="submit" value="정보 추가">
    </form>

    <!-- 그래프를 그리기 위한 JavaScript 코드 -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
        // 그래프 데이터
        const salesData = {
            labels: ['1월', '2월', '3월', '4월', '5월', '6월'],
            datasets: [{
                label: '매출',
                data: [10000, 20000, 15000, 25000, 18000, 22000],
                backgroundColor: 'rgba(75, 192, 192, 0.2)',
                borderColor: 'rgba(75, 192, 192, 1)',
                borderWidth: 1
            }]
        };

        // 그래프 설정
        const salesChartOptions = {
            scales: {
                y: {
                    beginAtZero: true
                }
            }
        };

        // 매출 그래프 생성
        const salesChartCanvas = document.getElementById('salesChart').getContext('2d');
        const salesChart = new Chart(salesChartCanvas, {
            type: 'bar',
            data: salesData,
            options: salesChartOptions
        });
    </script>
</body>
</html>
