<%@page import="vo.DeptVO"%>
<%@page import="java.util.List"%>
<%@page import="dao.DeptDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	DeptDAO dao = DeptDAO.getInstance();//DAO객체생성, DAO생성자가 private기 때문
	List<DeptVO> dlist = dao.selectList();
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	<table border="1">
		<tr>
			<th>부서번호</th>
			<th>부서이름</th>
			<th>부서위치</th>
		</tr>
		
		<%
		for(int i = 0; i < dlist.size(); i++){
			DeptVO vo = dlist.get(i);
		%>
		
		<tr>
			<td><%=vo.getDeptno()%></td>
			<td><%=vo.getDname()%></td>
			<td><%=vo.getLoc()%></td>
		</tr>
		<%} %>
	</table>
	</body>
</html>