<%@page import="java.net.URL"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%
	String [][] userList={{"admin1","123456"},{"user2","123456"},{"pass1","123456"}};
	boolean flag = false;
	request.setCharacterEncoding("UTF-8");
	String username=request.getParameter("username");
	String password=request.getParameter("password");
	for(int i=0;i<userList.length;i++)
	{
		if(userList[i][0].equals(username))
		{
			if(userList[i][1].equals(password))
			{
				flag=true;
				break;
			}
		}
	}
	if(flag)
	{
		session.setAttribute("username",username);
		response.sendRedirect("index.jsp");
	}
	else
	{
%>
		登录失败，3秒后自动跳转
		<% 
		response.setHeader("refresh", "3;url=index.jsp");
	}%>
	
	
