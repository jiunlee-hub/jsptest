<%@page import="javax.naming.InitialContext"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*, javax.sql.*, javax.naming.*"%>
    <%
		String id = request.getParameter("id");
    	String pass = request.getParameter("pass");
	
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
	
	
	try {
		Context init = new InitialContext();
		DataSource ds = (DataSource)init.lookup("java:comp/env/jdbc/ms");
		conn = ds.getConnection();
		
		pstmt=conn.prepareStatement( "SELECT * FROM members WHERE id=?");
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		
		if(rs.next()) {
		if(pass.equals(rs.getString("password"))) {
			session.setAttribute("id", id);
			out.println("<script>location.href='main.jsp';</script>");		
	}
		}
		out.println("<script>location.href='loginform.jsp';</script>");	
	} catch (Exception e) {
		e.printStackTrace();
	} finally {
		try {
			rs.close();
			pstmt.close();
			conn.close();
		}
		catch(Exception e) {
			e.printStackTrace();
		}		
	}
%>