<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!String str; %>
<form method="post">
<input type="text" name="un"><br>
<input type="password" name="pwd"><br>
<input type="submit">
<%=str="hii "+request.getParameter("un") %>
</form>
<%!int week=1; %>
<%switch(week)
{
case 0:
	out.print("sunday");break;
case 1:
	out.print("monday");break;
}%>
</body>
</html>