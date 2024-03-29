<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.sql.*"%>
<%@ page import="menu.db.connection.DBConnection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>미급알 : 오늘의 메뉴</title>
<!--
<link rel="shortcut icon" href="img/logo.png">
<link rel="apple-touch-icon" href="img/logo_apple.png">
-->
<link rel="stylesheet" href="css/index.css">
<link href="https://fonts.googleapis.com/css?family=Jua&display=swap" rel="stylesheet">

<style>
.thumbnail{
	width:200px;
	height:300px;
}
.link{
	color:#311b1b;
}
.link:hover{
	color:#ed6853;
}
b:hover{
	color:#ed6853;
}
a:hover{
	text-decoration:none;
}
</style>
</head>
<body>
<jsp:include page="top.jsp" flush="false"/><p>
<p></p>
<table id="whole">
	
	<tr>
		<td>
			<div id="box" align="center">
				<p></p>
	    		<h1>오늘의 메뉴</h1>
	    		<p></p>
				<%
					//db연결
					Connection conn=null;
					PreparedStatement pstmt=null;
					ResultSet rs=null;
					
					String sql="select menu_date, mtype, REPLACE(menu,' ','\r') as menu from schoolmealtbl where menu_date=curdate()";
					int count=1;
					
					try{
						conn=DBConnection.getCon();
						pstmt=conn.prepareStatement(sql);
						rs=pstmt.executeQuery();
						%>
						
							<%
								while(rs.next()){
									if(count%3==1){%>
									<table width="80%" align="center" id="books" border=1 cellspacing=0 cellpadding=0>
									<tr class="menu">
										<td colspan=5 align="center" style="padding:2%;"><%=rs.getString("menu_date") %><br></td>
									</tr>
									<tr>	
										<td width="30%" align="center" style="padding:2%;">
											<a onclick="login()" class="link">
												<b style="color:#f54e42;font-size:1.5em;"><%=rs.getString("mtype") %></b><br>
												<%=rs.getString("menu") %><br>
											</a>
										</td>	
							
								<%	}//if
									else if(count%3==2){%>
										<td width="30%" align="center" style="padding:2%;">
											<a onclick="login()" class="link">
												<b style="color:#f54e42;font-size:1.5em;"><%=rs.getString("mtype") %></b><br>
												<%=rs.getString("menu") %><br>
											</a>
										</td>
										
									<%}
									else{%>
											<td width="30%" align="center" style="padding:2%;">
												<a onclick="login()" class="link">
													<b style="color:#f54e42;font-size:1.5em;"><%=rs.getString("mtype") %></b><br>
													<%=rs.getString("menu") %><br>
												</a>
											</td>
											<p></p>
										</tr>
										
										</table>
									<%}
									count++;
								}//while
								if(count==1){%>
									<div style="background-color:#ffc400;color:white;width:50%;font-size:2em;padding:5%;margin-top:5%;border-radius:10px;" align="center">
										준비된 급식이 없습니다
									</div>
								<%}
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