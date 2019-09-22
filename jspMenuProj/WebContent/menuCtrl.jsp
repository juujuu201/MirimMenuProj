<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<%@ page import="menu.db.connection.DBConnection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>미급알 : 메뉴 관리</title>
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
					
					String sql="select * from schoolmealtbl order by menu_date";
					
					try{
						conn=DBConnection.getCon();
						pstmt=conn.prepareStatement(sql);
						rs=pstmt.executeQuery();
						%>
						<table width="70%" align="center">
							<tr style="color:#f54e42;">
								<th width="30%">날짜</th>
								<th width="30%">조/중/석</th>
								<th width="30%">수정</th>
							</tr>
							<%
							while(rs.next()){%>
								<tr align="center">	
									<td><%=rs.getString("menu_date") %></td>
									<td><%=rs.getString("mtype") %></td>
									<td><a href="menuChange.jsp?menu_date=<%=rs.getString("menu_date") %>&mtype=<%=rs.getString("mtype")%>">수정</a></td>
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
<p><br></p>
</body>
</html>