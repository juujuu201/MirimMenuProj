<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>미급알</title>
<!--
<link rel="shortcut icon" href="img/logo.png">
<link rel="apple-touch-icon" href="img/logo_apple.png">
-->
<link rel="stylesheet" href="css/index.css">
<link href="https://fonts.googleapis.com/css?family=Jua&display=swap" rel="stylesheet">
<script>
	function check(){
		alert("로그인 후 이용하실 수 있습니다");
		return ;
	}
</script>
</head>
<body>
    <table id="whole">
    <p></p>
        <tr>
            <td width="44%"></td>
            <td width="12%"><a href="index.jsp"><img src="img/logo.png" width="100%"></a><p></p></td>
            <td width="44%" style="padding-left:20%;">
            <div id="login"></div>
                		<a href="login.jsp" class="top_menu" style="color:#f54e42;" target="_top">로그인</a>&nbsp;
                		<a href="signup.jsp" class="top_menu" target="_top">회원가입</a><p>   
        				<p></p>
            </td>
        </tr>
        <tr class="menu">
        
            <td colspan=3>
                <table width="100%" height="50px">
                    <tr>
                       <td width="30%"></td>
                        <td class="menu_in"><a href="index.jsp">전체메뉴</a></td>
                        <td class="menu_in"><a href="todayMenu.jsp">오늘의 메뉴</a></td>
                        <td class="menu_in"><a href="dateMenu.jsp">날짜검색</a></td>
                        <td class="menu_in"><a href="sugBoard.jsp">건의사항</a></td>
                        <td class="menu_in"><a onclick="check()">마이페이지</a></td>
                        <td width="30%"></td>
                    </tr>
                </table></td>
        </tr>
    </table>
</body>
</html> 