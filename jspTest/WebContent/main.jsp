<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = null;

	if(session.getAttribute("id") != null) {
		id = (String) session.getAttribute("id");
	} else {
		out.println("<script>location.href='loginform.jsp'</script>");	
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리 시스템 메인페이지</title>
</head>
<body>
	<h3><%=id %> 로 로그인 하셨습니다.</h3>
	<%if(id.equals("admin")){%>
		<a href="member_list.jsp">관리자모드접속(회원목록보기)</a>
	<%} %>
</body>
</html>