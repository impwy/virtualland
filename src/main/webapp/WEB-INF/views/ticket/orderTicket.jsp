<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <title>Order Ticket Page</title>
</head>
<body>
    <div class="ticket-info">
       
        <form action="order" method="post">
        <h3>방문날짜</h3>
        <input type="date" name="ticket_date" id="date">
        
        <h3>티켓종류</h3>
        <input type="" name="ticket_type" id="type">
        
        <h3>이메일</h3>
        <input type="text" name="ticket_email" id="email">
        
        <h3>핸드폰</h3>
        <input type="text" name="ticket_phone" id="phone">
        
        <h3>금액</h3>
        <input type="number" id="total" name="ticket_sum" readonly />
        <script>
        $('document').ready(function(){
        	
        });
        </script>
        <button type="submit">a</button>
    	</form>
    	<form action="deleteTicket" method="post">
    	<h1>티켓넘버 입력</h1>
		<input type="text" name="ticket_num">
    	<button>삭제</button>
    	</form>
    	</div>
</body>
<!-- session 아이디 체크해서 회원이면 회원 아이디로 저장 
    회원이 아니면 default로 guest+숫자로 넣어주기 
-->
</html>