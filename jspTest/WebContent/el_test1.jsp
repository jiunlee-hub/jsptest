<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	session.setAttribute("test", "Session Test");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 내장 객체 사용예제</title>
<style>
	table {
		margin: auto;
		width: 400px;
		border: 1px solid gray;
		text-align: center;
	}
</style>
</head>
<body>
<form action="el_test2.jsp" method="post">
	<table>
		<tr>
			<td>이름 : </td>
			<td><input type="text" name="name" value="홍길동"></td>
		</tr>
		<tr>
			<td colspan=2 align=center><input type="submit" name="name" value="입력"></td>
		</tr>
	</table>
</form>
</body>
</html>