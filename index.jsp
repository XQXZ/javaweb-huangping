<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
	*
	{
		margin:0px;
		padding:0px;
	}
	#head
	{
		background-image:url(images/top.jpg);
		width:100%;
		height:120px;
		color:white;
	}
	#mid
	{
		margin:10px 0px 0px 40%;
		width:500px;
		height:500px;
		
	}
	#loginBtn
	{
		margin-left:90%;
	}
	#imgcenter
	{
		margin:10px 0px 5px 1.5%;
	}
</style>
<script src="JQuery/jquery-3.2.1.min.js" type="text/javascript"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>

<%

String username=(String)session.getAttribute("username");

%>
<body>
	
	<div id="head">
		<div id="loginBtn">
		<%
			if(username==null)
			{
		%>
				登录
			<% }
			else
			{%>
				<font color="red">[<%=username %>]</font>,你好
			<% }%>
		</div>
		<div id="mid" style="display: none">
		<form  name="form1" action="deal.jsp" method="post">
			<table>
				<tr>
					<td>用户名:</td>
					<td><input type="text" name="username"/></td>
				</tr>
				<tr>
					<td>密     码:</td>
					<td><input type="password" name="password"/></td>
				</tr>
				<tr>
					<td colspan="2"><button>登录</button></td>
				</tr>
			</table>
		</form>
		</div>
	</div>
	
	<div id="imgcenter">
		<img src="images/middlecontent.png"/>
	</div>
	<script>
		$(document).ready(function(){
			$("#loginBtn").click(function(){
				$("#mid").show();
			})
		})
	</script>
</body>
</html>
