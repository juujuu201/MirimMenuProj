<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<%@ page import="menu.db.connection.DBConnection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>미급알 : 회원 관리</title>
<link rel="stylesheet" href="css/memberCtrl.css">
<link href="https://fonts.googleapis.com/css?family=Jua&display=swap" rel="stylesheet">
<style>
a{
	color:white;
}
a:hover{
	color:#ed6853;
}
</style>
</head>
<body>
<jsp:include page="topp.jsp" flush="false"/><p>
<table id="whole">
	<tr>
		<td>
			<div id="box" align="center">
				<%
					//db연결
					Connection conn=null;
					PreparedStatement pstmt=null;
					ResultSet rs=null;
					
					String sql="select id, name, pw, email, tel from member";
					
					try{
						conn=DBConnection.getCon();
						pstmt=conn.prepareStatement(sql);
						rs=pstmt.executeQuery();
						%>
						<table width="80%" align="center">
							<tr style="color:#f54e42;">
								<th>아이디</th>
								<th>이름</th>
								<th>비밀번호</th>
								<th>이메일</th>
								<th>전화번호</th>
								<th>삭제</th>
							</tr>
							<%
							while(rs.next()){%>
								<tr align="center">	
									<td><%=rs.getString("id") %></td>
									<td><%=rs.getString("name") %></td>
									<td><%=rs.getString("pw") %></td>
									<td><%=rs.getString("email") %></td>
									<td><%=rs.getString("tel") %></td>
									<td><a href="memberDelete.jsp?id=<%=rs.getString("id") %>">삭제</a></td>
								</tr>
							<%} %>
						</table>
						<%
					}
					catch(SQLException e){
						System.out.println(e.getMessage());
					}
					finally{
						try{
							if(pstmt!=null) pstmt.close();
							if(conn!=null) conn.close();
						}
						catch(SQLException e){
							System.out.println(e.getMessage());
						}
					}
				%>
			</div>
		</td>
	</tr>
</table>
</body>
</html>