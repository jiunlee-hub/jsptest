<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Include Action Test</title>
</head>
<body>
	<h2>인클루드 액션테스트</h2>
	<jsp:include page="includeTest2.jsp">
		<jsp:param name="name" value="hongkidong" />
	</jsp:include>
</body>
</html>