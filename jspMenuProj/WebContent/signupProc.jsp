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
	
	String name=request.getParameter("name"); 
	
	String pw=request.getParameter("pw");
	String pwchk=request.getParameter("pwchk");
	
	String tel1=request.getParameter("tel1");
	String tel2=request.getParameter("tel2");
	String tel3=request.getParameter("tel3");
	String tel=tel1+"-"+tel2+"-"+tel3;
	
	String email1=request.getParameter("email1");
	String email2=request.getParameter("email2");
	String email=email1+"@"+email2;
	
	String address=request.getParameter("address");
	
	
	//db연결
    Connection conn=null;
    PreparedStatement pstmt=null;
    String sql="insert into member(id, name, tel, email, address, pw, pwchk) values(?,?,?,?,?,?,?)";
    int n=0;
    
	//db 회원 테이블에 insert하기
	try{
		conn=DBConnection.getCon();
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,id);
		pstmt.setString(2,name);
		pstmt.setString(3,tel);
		pstmt.setString(4,email);
		pstmt.setString(5,address);
		pstmt.setString(6,pw);
		pstmt.setString(7,pwchk);
		
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
	var id="<%=id%>";
	if(<%=n%>>0){
		alert(id+"님 환영합니다 :)");
		location.href="login.jsp";
	}
	else{
		alert("회원가입에 실패하였습니다 :(");
		history.go(-1);
	}
</script>
</body>
</html>