<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<form method="post" action="Login.jsp">
        <center>
        <h3><%=request.getAttribute("errorMessage") %></h3>
                <br>

          Login again using valid credentials <br> 
          <br>
          
           <input type="submit" value="Login again">
                
        </center>
    </form>


</body>
</html>