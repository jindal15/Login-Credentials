<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
if(session.getAttribute("uname")!=null)
	response.sendRedirect("welcome.jsp");
%>
<form action="login" method="post">

User Name<input type="text" name="uname"><br>

Password<input type="password" name="password">
<input type="submit" value="log-in">
</form>

</body>
</html>