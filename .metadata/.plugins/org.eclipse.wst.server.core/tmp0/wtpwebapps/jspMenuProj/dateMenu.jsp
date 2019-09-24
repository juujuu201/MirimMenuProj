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
	color:#311b1b;
	text-decoration:none;
}
b:hover{
	color:#ed6853;
}
</style>
<title>미급알 : 검색하기</title>
</head>
<body>
<jsp:include page="top.jsp" flush="false"/><p>
<p></p>
<table id="whole">
<div id="box" align="center">
	<p></p>
	<h1>날짜로 검색하기</h1>
	<h4>날짜를 선택해 급식 메뉴를 알아보세요</h4>
	<p></p>
	    		
	<form method="post" action="dateMenu.jsp">
	<div class="form-group form-group-sm" style="margin-top:5%;padding-bottom:5%;">
	  <div class="col-sm-3"></div>
      <label class="col-sm-1" for="usr">날짜 : </label>
      <div class="col-sm-3">
      	<input type="date" class="form-control" id="usr" name="date">
      </div>
      <div class="col-sm-1 form-group">
      	<select name="mtype" class="form-control">
      		<option value="조식">조식</option>
      		<option value="중식">중식</option>
      		<option value="석식">석식</option>
      	</select>
      </div>
      <div class="col-sm-1">
      	<input type="submit" class="btn form-control btn-warning" value="검색" id="search">
      </div>
      <div class="col-sm-3"></div>
    </div>
    </form>
    <p></p>
	<tr>
		<td align="center">
			
				
<%
	request.setCharacterEncoding("utf-8");

	String date=request.getParameter("date");
	String mtype=request.getParameter("mtype");
	System.out.println("mtype : "+mtype);
	int count=1;

	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	
	try{
		conn=DBConnection.getCon();
		pstmt=conn.prepareStatement("select menu_date, mtype, menu from schoolmealtbl where DATE_FORMAT(menu_date,'%Y-%m-%d')=? AND mtype=? order by menu_date");
		pstmt.setString(1,date);
		pstmt.setString(2, mtype);
		
		rs=pstmt.executeQuery();%>
		<%while(rs.next()){
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
			<div style="background-color:#ffc400;color:white;width:50%;font-size:2em;padding:5%;margin-top:2%;border-radius:10px;" align="center">
			준비된 급식이 없습니다
			</div>
		<%}
	}catch(Exception e){
		e.printStackTrace();
	}
%>
			
		</td>
	</tr>
	</div>
</table>
</body>
</html>