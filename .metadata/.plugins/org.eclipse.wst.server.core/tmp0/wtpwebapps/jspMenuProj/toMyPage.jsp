<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>미급알 : 마이페이지</title>
<link rel="stylesheet" href="css/myPage.css">
<link href="https://fonts.googleapis.com/css?family=Jua&display=swap" rel="stylesheet">
</head>
<body>
<jsp:include page="top.jsp" flush="false"/><p>
<%
	request.setCharacterEncoding("utf-8");
	String id=request.getParameter("id");
	
	if(id.equals("null")||id.equals("")){%>
		<script>
			alert("로그인이 필요한 페이지입니다");
			location.href="login.jsp";
		</script>
<%	}
	else{%>
		<script>
			location.href="myPage.jsp";
		</script>
<%	}
%>
<%=id %>님의 마이페이지
</body>
</html>