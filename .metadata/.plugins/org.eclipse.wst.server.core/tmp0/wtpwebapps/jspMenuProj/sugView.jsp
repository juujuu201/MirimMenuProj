<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<%@ page import="menu.db.connection.DBConnection" %>

<%@page import="org.apache.commons.io.output.ByteArrayOutputStream"%>
<%@page import="java.io.*"%>
<%@page import="java.awt.image.BufferedImage"%>
<%@page import="javax.imageio.ImageIO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>미급알 : 건의사항</title>
<!--
<link rel="shortcut icon" href="img/logo.png">
<link rel="apple-touch-icon" href="img/logo_apple.png">
-->
<link rel="stylesheet" href="css/index.css">
<link href="https://fonts.googleapis.com/css?family=Jua&display=swap" rel="stylesheet">
<script>
    	function check(){
			document.forms['form'].submit();	
		}//function check()
</script>
<style>
.thumbnail{
	width:300px;
	height:450px;
	border:solid 2px #311b1b;
}
b{
	font-size:50px;
}
#upper{
	font-size:20px;
}
#price{
	font-size:20px;
	color:#ed6853;
	margin-bottom:180px;
}
.btn{
	background-color:#311b1b;
	color:#ffc400;
	border-radius:20px;
	border:0;
	outline:0;
	padding:1%;
	font-size:120%;
	width:10%;
	margin-right:10%;
}
#specific{
	border: 2px solid #311b1b;
	background-color:#ffc400;
}
</style>
</head>
<body>

<jsp:include page="topp.jsp" flush="false"/><p>
<p></p>
<%	
		Cookie[] cookies=request.getCookies();
		String id="";
		
		for(int i=0; i<cookies.length; i++){
			if(cookies[i].getName().equals("id")){
        		id=cookies[i].getValue();
			}
		}
		
%>
	
<table id="whole">
	<tr>
		<td>
			<div id="box" align="center">
				<%
					request.setCharacterEncoding("utf-8");
					
					String title=request.getParameter("title");
					
					//db연결
					Connection conn=null;
					PreparedStatement pstmt=null;
					ResultSet rs=null;
					
					try{
						conn=DBConnection.getCon();
						
						String sql="select * from suggestion where title=?";
						
						pstmt=conn.prepareStatement(sql);
						pstmt.setString(1,title);
						rs=pstmt.executeQuery();
						%>
						<div align="right">
							<a href="sugBoardd.jsp"><input type="button" id="enroll" class="btn" value="목록으로"></a>
						</div>
						<p></p>
						<table width="80%" align="center" id="books" cellpadding=0 cellspacing=0 border=1>
							<%
								while(rs.next()){%>
									<tr style="background-color:#ffc400;border-radius:10px;">	
										<td colspan=4 align="center" width="50%">
											<h2><%=rs.getString("title") %></h2>
										</td>
									</tr>
									<tr>
										<td align="center">
											<h4>작성자 : <%=rs.getString("id") %></h4>
										</td>	
										<td align="center">
											<h4>작성일 : <%=rs.getString("wdate") %></h4>
										</td>	
									</tr>
									<tr>
										<td colspan=4>
											<h3>&nbsp;&nbsp;<%=rs.getString("content") %></h3><p><br></p>
										</td>
									</tr>
						</table>
						<%} %>
						
						
						<p><br><br></p>
						<form name="form" action="sugViewCmt.jsp" method="post">
							<h3 style="background-color:#ffc400;padding:1%;width:38%;">댓글</h3>
							<input type="text" style="padding:1%" name="content" size=65>&nbsp;&nbsp;
							<input type="hidden" name="id"value="<%=id %>">
							<input type="hidden" name="title"value="<%=title %>">
							<input type="button" id="enroll" value="등록하기" onclick="check()" style="background-color:#ffc400;padding:1%;border:0;outline:0;">
						</form>
						<p><br></p>
						
						
					<%						
						sql="select * from comments where title=? order by wdate desc";
						
						pstmt=conn.prepareStatement(sql);
						pstmt.setString(1,title);
						rs=pstmt.executeQuery();
						%>
						<table width="40%" align="center" cellpadding=0 cellspacing=0>
							<%
								while(rs.next()){%>
									<tr style="background-color:#ffc400;" width="50%">	
										<td style="left-padding:1%;">
											<h4>&nbsp;<%=rs.getString("id") %></h4>
										</td>
										<td style="align:right;" width="15%">
											<h4><%=rs.getString("wdate") %></h4>
										</td>
									</tr>
									<tr width="50%" style="background-color:#ffc400;">	
										<td style="left-padding:1%;" colspan=2  width="50%">
											<h4>&nbsp;<%=rs.getString("content") %></h4>
										</td>
									</tr>
									<tr><td colspan=2><br></td></tr>
					<%	}%>
					</table>
					<%}
					catch(SQLException e){
						e.printStackTrace();
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