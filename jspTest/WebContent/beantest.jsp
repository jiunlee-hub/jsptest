<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <jsp:useBean id="beantest" class="jsptest.BeanTest" />
   <%
//    jspTest.BeanTest beantest = new jspTest.BeanTest(); new랑 useBean 둘 중에 사용 가능
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2><%=beantest.getName() %></h2>
	<h2><jsp:getProperty property="name" name="beantest"/></h2>
</body>
</html>