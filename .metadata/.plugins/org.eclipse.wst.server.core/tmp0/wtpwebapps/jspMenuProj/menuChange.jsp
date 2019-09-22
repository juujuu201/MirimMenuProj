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
<title>미급알 : 마이페이지</title>
<link rel="stylesheet" href="css/index.css">
<link href="https://fonts.googleapis.com/css?family=Jua&display=swap" rel="stylesheet">
<script>

    	function check(){
    		if(document.form.menu.value==""){
				alert("메뉴를 입력해주세요");
				document.form.menu.focus();
				return;
			}
			
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
    color:lightgoldenrodyellow;
    border-radius:10px;
    padding:3%;
    margin-bottom:1%;
}
#dbox a{
    color:lightgoldenrodyellow;
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
	background-color:lightgoldenrodyellow;
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
	color:lightgoldenrodyellow;
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
	
	String menu_date=request.getParameter("menu_date");
	String mtype=request.getParameter("mtype");
	
	//db연결
	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;
	
	String sql="select * from schoolmealtbl where menu_date=? AND mtype=?";
	int count=1;
	
	try{
		conn=DBConnection.getCon();
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,menu_date);
		pstmt.setString(2,mtype);
		rs=pstmt.executeQuery();
%>
<form name="form" action="menuChangeProc.jsp" method="post">
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
           	<table id="whole" align="center">
	<tr>
		<td align="center">
			<div id="box" align="center">
				<p><br></p>
				<h2>메뉴 변경</h2>
				<p><br></p>
				<%while(rs.next()){ %>
				<table width="100%" align="center">
					<tr>
                            <td>
                                <font size="5%">날짜 : </font>
                            </td>
                            <td>
                                <%=rs.getString("menu_date") %>
                            </td>
                    </tr>
                    <tr>
                            <td>
                                <font size="5%">조/중/석 : </font>
                            </td>
                            <td>
                                <%=rs.getString("mtype") %>
                            </td>
                    </tr>
                    <tr>
                            <td>
                                <font size="5%">메뉴</font>
                            </td>
                            <td>
                                <input type="text" name="menu" class="text" size=70 value="<%=rs.getString("menu")%>"><p>
                            </td>
                    </tr>
                    <tr>
                           <td colspan=2 align="center">
                           	<p>
                           	<input type="hidden" name="menu_date" value="<%=rs.getString("menu_date") %>">
                           	<input type="hidden" name="mtype" value="<%=rs.getString("mtype") %>">
                           	<input type="button" id="signup" class="btn" value="변경하기" onclick="check()">
                           </td>
                    </tr>
            	</table>
            	</div>
            	<%}
			%>
            	</table>
           	</div>
           </td>
           <td width="5%"></td>
         </tr>
</table>  
<%}
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
</form>
</body>
</html>