<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글 상세</title>
</head>
<body>
	<center>
		<h1>글 상세</h1>
		<a href="#">Log-Out(미구현)</a>
		<hr>
		<form action="updateBoard" method="post">
			<input name="seq" type="hidden" value="${board.board_num}">
			<table border="1" cellpadding="0" cellspacing="0">
				<tr>
					<td bgcolor="orange" width="70">제목</td>
					<td align="left"><input type="text" name="title"
						value="${board.board_title }"></td>
				</tr>
				<tr>
					<td bgcolor="orange">작성자</td>
					<td align="left">${board.member_id }</td>
				</tr>
				<tr>
					<td bgcolor="orange">내용</td>
					<td align="left"><textarea name="content" cols="40" rows="10">${board.board_content }</textarea></td>
				</tr>
				<tr>
					<td bgcolor="orange">등록일</td>
					<td align="left"><fmt:formatDate value="${board.board_regDate }" pattern="yyyy-MM-dd"/></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="글 수정"></td>
				</tr>
			</table>
		</form>
		<hr>
		<a href="insertBoard.jsp">글등록</a> <a
			href="deleteBoard?seq=${board.board_num }">글삭제</a> <a
			href="getBoardList">글목록</a>&nbsp;&nbsp;&nbsp;
	</center>
</body>
</html>