<%@page import="dao.SjDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//sung_del.jsp?no=1
	int no = Integer.parseInt(request.getParameter("no"));

	SjDAO.getInstance().delete(no);
	
	//location.href="student.jsp";는 스크립트 코드라 여기영역에서 작동하지 않음
	response.sendRedirect("student.jsp");//위와 같은 코드
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		
	</body>
</html>