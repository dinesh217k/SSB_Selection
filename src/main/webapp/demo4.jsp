<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>For Logic</title>
</head>
<body>
<table border=5 width=100%>
<%
String[] colors={"red","green","blue"};
for(int i=0;i<colors.length;i++)
{
	%>
	<tr style="color:blue;">
	 <td><%=i  %></td>
	 <td><%=colors[i]%></td>
	</tr>
	<%
	
}
%>
</table>
</body>
</html>