<%@page import="com.douzone.guestbook.vo.GuestbookVo"%>
<%@page import="com.douzone.guestbook.dao.GuestbookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String password = request.getParameter("password");
	String message = request.getParameter("message");
	String regDate = request.getParameter("regDate");
	
	GuestbookVo vo = new GuestbookVo();
	vo.setName(name);
	vo.setPassword(password);
	vo.setMessage(message);
	vo.setRegDate(regDate);
	
	new GuestbookDao().insert(vo);
	
	response.sendRedirect("index.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>GOOD</h1>
</body>
</html>