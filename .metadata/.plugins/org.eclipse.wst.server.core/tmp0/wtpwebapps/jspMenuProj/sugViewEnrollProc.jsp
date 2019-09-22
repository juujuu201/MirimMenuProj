<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.sql.*"%>
<%@ page import="menu.db.connection.DBConnection" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String id=request.getParameter("id"); 
	String title=request.getParameter("title"); 
	String content=request.getParameter("content");
	
	java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	String today = formatter.format(new java.util.Date());
	System.out.println(today);
	
	//db연결
    Connection conn=null;
    PreparedStatement pstmt=null;
    String sql="insert into suggestion(id, title, content, wdate) values(?,?,?,?)";
    int n=0;
    
	//db 회원 테이블에 insert하기
	try{
		conn=DBConnection.getCon();
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,id);
		pstmt.setString(2,title);
		pstmt.setString(3,content);
		pstmt.setString(4,today);
		n=pstmt.executeUpdate();
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
<script>
	var id="<%=title%>";
	if(<%=n%>>0){
		alert("건의사항이 작성되었습니다");
		location.href="myPage.jsp";
	}
	else{
		alert("건의사항 작성에 실패하였습니다 :(");
		history.go(-1);
	}
</script>
</body>
</html>