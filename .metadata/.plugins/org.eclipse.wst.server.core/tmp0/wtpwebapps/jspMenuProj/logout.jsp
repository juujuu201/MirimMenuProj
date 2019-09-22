<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>미급알</title>
<link href="https://fonts.googleapis.com/css?family=Jua&display=swap" rel="stylesheet">
</head>
<%
	Cookie[] cookies=request.getCookies();
	if(cookies!=null){
		for(int i=0;i<cookies.length;i++){
			if(cookies[i].getName().equals("id")){
					cookies[i].setMaxAge(0);
					response.addCookie(cookies[i]);
			}
		}
	}
%>
<script>
	alert("로그아웃 되었습니다");
</script>
<meta http-equiv="refresh" content="1;URL='index.jsp'">

</body>
</html>