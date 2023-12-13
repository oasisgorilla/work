<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	//자바로 만든 구구단
	for( int i = 1; i <= 9; i++ ){
		
		for( int j = 2; j <= 9; j++ ){
			
			System.out.printf("%d * %d = %d\t", j, i, j*i);
			
		}//inner
		System.out.println();
		
	}//outer
%>    
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	
	<body>
	
		<table border="1">
			
			<%for( int i = 1; i <= 9; i++ ){ %>
				<tr>
					<% for( int j = 2; j <= 9; j++ ){ %>
						<td>
							<% String str = 
						    String.format("%d x %d = %d", j, i, j*i); %>
						    <%= str %>
						 </td>
					<%} %>
				</tr>
			<%} %>
			
		</table>
	
	</body>
</html>




























































