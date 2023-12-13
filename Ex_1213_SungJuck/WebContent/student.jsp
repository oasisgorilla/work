<%@page import="java.util.List"%>
<%@page import="vo.SjVO"%>
<%@page import="dao.SjDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	SjDAO dao = SjDAO.getInstance(); //new와 같음
	List<SjVO> sj_list = dao.selectList();
	
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		
		<script>
			function del(no){
			
				if(!confirm("정말로 삭제하시겠습니까?")){
					return;
				}
				
				location.href="sung_del.jsp?no="+no;//post로 보내려면 form태그로 묶어서 submit으로 보내야 함
				
			}
		</script>
	</head>
	<body>
		<form id="m_form">	
			<table border="1">
				<caption> 학생정보 </caption>
				
				<tr>
					<th>번호</th>
					<th>이름</th>
					<th>국어</th>
					<th>영어</th>
					<th>수학</th>
					<th>총점</th>
					<th>평균</th>
					<th>등수</th>
					<th>비고</th>
				</tr>
				
				<% for( int i = 0; i < sj_list.size(); i++ ){ 
					SjVO vo = sj_list.get(i);
				%>
				<tr>
					<td><%= vo.getNo() %></td>
					<td><%= vo.getName() %></td>
					<td><%= vo.getKor() %></td>
					<td><%= vo.getEng() %></td>
					<td><%= vo.getMat() %></td>
					<td><%= vo.getTot() %></td>
					<td><%= vo.getAvg() %></td>
					<td><%= vo.getRank() %></td>
					<td>
						<input type="button" value="삭제" onclick="del('<%=vo.getNo()%>');">
					</td>
				</tr>
				
				<%} %>
				
				<tr>
					<td colspan="9">
						<input type="button" value="학생추가" onclick="location.href='sung_register.jsp'">
					</td>
				</tr>
			</table>
			
		</form>
	</body>
</html>