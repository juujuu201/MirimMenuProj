<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.sql.*"%>
<%@ page import="menu.db.connection.DBConnection" %>

<%@page import="org.apache.commons.io.output.ByteArrayOutputStream"%>
<%@page import="java.io.*"%>
<%@page import="java.awt.image.BufferedImage"%>
<%@page import="javax.imageio.ImageIO"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>미급알 : 건의사항 작성하기</title>
<link rel="stylesheet" href="css/index.css">
<link href="https://fonts.googleapis.com/css?family=Jua&display=swap" rel="stylesheet">
<script>
    	window.onload=function(){
    		document.form.ctitle.focus();
    	}
    	
    	function check(){
			document.forms['form'].submit();	
		}//function check()
</script>
<style>
#box{
    background-color:#ffc400;
    border-radius:30px;
    padding:1%;
    width:90%;
}
#dbox{
    background-color:#311b1b;
    color:white;
    border-radius:10px;
    padding:3%;
    margin-bottom:1%;
}
#dbox a{
    color:white;
}
#dbox a:hover{
    color:#ed6853;
}
#mbox{
    background-color:#311b1b;
    color:#ed6853;
    border-radius:10px;
    padding:3%;
    margin-bottom:1%;
}
#mbox a{
    color:#ed6853;
}
.thumbnail{
	width:100px;
	height:150px;
}
.link{
	color:#311b1b;
}
b:hover{
	color:#ed6853;
}
#specific{
	border: 2px solid #311b1b;
	background-color:#ffc400;
	border-collapse:collapse;
}
.text{
	border-radius:10px;
	border:0;
	outline:0;
	padding-left:5px;
	font-size:110%;
}
.btn{
	background-color:#311b1b;
	color:white;
	border-radius:20px;
	border:0;
	outline:0;
	padding:3%;
	font-size:120%;
}
#bbox{
    background-color:#311b1b;
    color:#15a100;
    border-radius:10px;
    padding:3%;
    margin-bottom:1%;
}
#bbox a{
    color:#15a100;
}
#ybox{
    background-color:#311b1b;
    color:#fce803;
    border-radius:10px;
    padding:3%;
    margin-bottom:1%;
}
#ybox a{
    color:#fce803;
}
</style>
</head>
<body>
<jsp:include page="topp.jsp" flush="false"/><p>
<%
	request.setCharacterEncoding("utf-8");
	
	Cookie[] cookies=request.getCookies();
	String id="";
		
	for(int i=0; i<cookies.length; i++){
		if(cookies[i].getName().equals("id")){
	    	id=cookies[i].getValue();
		}
	}
	//db연결
	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	
	String sql="";
%>	
<form name="form" action="sugViewEnrollProc.jsp" method="post">
<table id="whole">
        <tr>
           <td width="5%"></td>
           <td width="20%" style="vertical-align:top;">
           	<div id="box" align="center">
           		<br><font style="font-size:150%;">마이페이지<p></font>
           		<%=id %>님 환영합니다 :)<p>
           	</div><p>
           	<%if(id.equals("admin")){ %>
           		<div id="dbox" align="center"><a href="infoChange.jsp">정보수정</a></div>
           		<div id="dbox" align="center"><a href="memberCtrl.jsp">회원관리</a></div>	
           		<div id="dbox" align="center"><a href="menuCtrl.jsp">메뉴 관리</a></div>
           	<%}else {%>
           		<div id="dbox" align="center"><a href="infoChange.jsp">정보수정</a></div>
           		<div id="dbox" align="center"><a href="sugViewEnroll.jsp">건의사항 등록하기</a></div>
           	<%} %>
           </td>
           <td width="5%"></td>
           <td width="65%">
           	<div id="box" align="center">
           	<table id="whole">
	<tr>
		<td>
			<div id="box" align="center">
				<h2>건의사항 작성</h2>
				
				<table width="110%">
	                <tr>
		                <td>
		                	<font size="4%">제목</font>
		                </td>
		                <td>
		                	<input type="text" size=50 name="title" class="text"><p>
		                </td>
	                </tr>
	                <tr>
		                <td>
		                	<font size="4%">작성자</font>
		                </td>
		                <td>
		                	<input type="text" name="id" class="text" size=30 value="<%=id %>"><p>
		                </td>
	                </tr>
	                <tr>
	                	<td>
		                	<font size="4%">내용</font>
		                </td>
		                <td colspan=2>
		                	<input type="text" name="content" class="text" size=80><p>
		                </td>
	                </tr>
	                <tr>
	                	<td colspan=2 align="center">
	                		<input type="button" id="enroll" class="btn" value="등록하기" onclick="check()">
	                	</td>
	                </tr>
            	</table>
            	</table>
           	</div>
           </td>
           <td width="5%"></td>
         </tr>
</table>  
</form>
</body>
</html>