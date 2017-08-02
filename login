<!--Uers.java-->
package com.po;

public class User {
	private static String [][] Array = new String[10][3];
	private static int size=0;
	public User()
	{
		
	}
	public static void add(String name,String password)
	{
			Array[size][0]=name;
			Array[size][1]=password;
			size++;
	}
	public static int num()
	{
		return size;  
	}
	public static Boolean query(String name,String password)
	{
		Boolean flag=false;
		for(int i=0;i<size;i++)
		{
			if(Array[i][0].equals(name)&&Array[i][1].equals(password))
			{
				flag=true;
				break;
			}
		}
		return flag;
	}
	public static Boolean compare(String pwd,String pwd1)
	{
		Boolean flag=false;
		if(pwd.equals(pwd1))
		{
			flag=true;
		}
		return flag;
	}
	public static Boolean check(String name)
	{
		Boolean flag=true;
		for(int i=0;i<size;i++)
		{
			if(Array[i][0].equals(name))
			{
				flag=false;
				break;
			}
		}
		return flag;
	}
	public static Boolean checknull(String name1,String name2,String name3)
	{
		Boolean flag=true;
		if("".equals(name1)||"".equals(name2)||"".equals(name3))
		{
			flag=false;
		}
		return flag;
	}
	
}


<!--index.jsp-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    
		request.setCharacterEncoding("utf-8");
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="myUser" class="com.po.User" scope="request"></jsp:useBean>
<a href="login.jsp">登录</a>
<a href="register.jsp">注册</a>
</body>
</html>


<!--login.jsp-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="form2" action="logindeal.jsp" method="post">
		用户名:<input type="text" name="loginname"/>
		密    码:<input type="password" name="loginpwd"/>
		<button>登录</button>
	</form>
</body>
</html>
