
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="UTF-8" http-equiv="content-Type" content="text/html">

<title>게시판</title>
</head>
<body>
		<h1>게시판</h1>
		<h3>
			${member_id }게시판 입니다.<a href="#">Log-out(미구현)</a>
		</h3>
		<!-- 검색 시작 -->
<%--		<form action="getBoardList" method="post">--%>
<%--			<table border="1" cellpadding="0" cellspacing="0" width="700">--%>
<%--				<tr>--%>
<%--					<td align="center">--%>
<%--					<select name="searchCondition">--%>
<%--							<c:forEach items="${conditionMap }" var="option">--%>
<%--							<option value="${option.value }">${option.key }--%>
<%--							</c:forEach>--%>
<%--					</select> <input type="text" name="searchKeyword"> <input--%>
<%--						type="submit" value="<spring:message code="message.board.list.search.condition.btn"/>"></td>--%>
<%--				</tr>--%>
<%--			</table>--%>
<%--		</form>--%>
		<!-- 검색 종료 -->
		<table border="1" cellpadding="0" cellspacing="0" width="700">
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일자</th>
			</tr>
			<c:forEach items="${boardList }" var="board">
				<tr>
					<td>${board.board_num }</td>
					<td align="left"><a href="getBoard?board_num=${board.board_num }">${board.board_title }</a></td>
					<td>${board.member_id }</td>
					<td>${board.board_regdate }</td>
				</tr>
			</c:forEach>

		</table>
		<c:if test="${member.member_id eq 'admin'}">
					<button type="button" class="text" onClick="location.href='insertBoard'">글쓰기</button>
				</c:if>
		<br>
</body>
</html>

