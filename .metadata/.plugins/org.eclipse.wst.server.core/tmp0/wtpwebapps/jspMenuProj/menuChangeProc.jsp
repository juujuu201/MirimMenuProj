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
	Cookie[] cookies=request.getCookies();
	String id="";
		
	for(int i=0; i<cookies.length; i++){
		if(cookies[i].getName().equals("id")){
	    	id=cookies[i].getValue();
		}
	}
	
	String menu_date=request.getParameter("menu_date"); 
	String mtype=request.getParameter("mtype"); 
	String menu=request.getParameter("menu"); 
	
	//db연결
    Connection conn=null;
    PreparedStatement pstmt=null;
    String sql="update schoolmealtbl set menu=? where menu_date=? AND mtype=?";
    int n=0;
    
	//db 회원 테이블에 insert하기
	try{
		conn=DBConnection.getCon();
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, menu);
		pstmt.setString(2, menu_date);
		pstmt.setString(3,mtype);
		
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
	var date="<%=menu_date%>";
	if(<%=n%>>0){
		alert("메뉴가 변경되었습니다");
		location.href="indexx.jsp";
	}
	else{
		alert("메뉴 변경에 실패하였습니다 :(");
		history.go(-1);
	}
</script>
</body>
</html>