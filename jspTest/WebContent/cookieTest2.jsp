<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name="";
	String value="";
	String cookie=request.getHeader("Cookie");
	
	if(cookie!=null) {
		Cookie cookies[] =request.getCookies();
		
		for(int i=0; i<cookies.length; i++) {
			name = cookies[i].getName();
			value= cookies[i].getValue();
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie Test</title>
</head>
<body>
	<h2>쿠키이름=<%=name %></h2>
	<h2>쿠키값=<%=value %></h2>
</body>
</html>