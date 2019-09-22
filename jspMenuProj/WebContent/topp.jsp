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
</head>
<body>
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
            <td width="44%"></td>
            <td width="12%"><a href="indexx.jsp"><img src="img/logo.png" width="100%"></a><p></p></td>
            <td width="44%" style="padding-left:20%;">
            <div id="login"></div>
                		<div id="whilelog"><font style="color:#f54e42;"><%=id %></font>님 로그인 중입니다</div><p>
                		<a href="logout.jsp" class="top_menu" style="color:#f54e42;">로그아웃</a>&nbsp;
                		<p></p>
            </td>
        </tr>
        <tr class="menu">
        <p></p>
            <td colspan=3>
                <table width="100%" height="50px">
                    <tr>
                       <td width="30%"></td>
                        <td class="menu_in"><a href="indexx.jsp">전체메뉴</a></td>
                        <td class="menu_in"><a href="todayMenuu.jsp">오늘의 메뉴</a></td>
                        <td class="menu_in"><a href="dateMenuu.jsp">날짜검색</a></td>
                        <td class="menu_in"><a href="sugBoardd.jsp">건의사항</a></td>
                        <td class="menu_in"><a href="myPage.jsp">마이페이지</a></td>                        
                        <td width="30%"></td>
                    </tr>
                </table></td>
        </tr>
    </table>
</body>
</html> 