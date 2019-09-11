<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
Hello <h2> <%=session.getAttribute("uname") %></h2>

<pre>
<%
if(session.getAttribute("uname")==null)
	response.sendRedirect("Login.jsp");
%>
bhjenbkjenkjenkjenkjnkj ejnfkjenfkekf ekjrnfnfkejnfew fjhfjernfjr f jncjdc ejrnjendfmcndfc jfncjdfnvmndmfcvdnrv djrnvjenrvmdf  jrev jkevnjnvjdkfnj djfnvjertv kevnkjenrjfnk jfrktndjtrgn rjnvkdnrjngfjtrkne,ngtr gkej ijdskasdiwhd uwadjahsdjew ajsduwqdmad jwhdjamsndjw jawdnbadjaw ajdbjwedjanfasd jadjakd rnerker
</pre>
<hr>
<a href="logout">Logout</a>
</body>
</html>