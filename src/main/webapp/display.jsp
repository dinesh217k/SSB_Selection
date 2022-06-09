<%@page import="ssb_pack.Register" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div style="max-width:500px;">
<%Register rg=new Register(); %>
<table  width=100%>
<tr class="gradientdown">
<th style="width:40px;"><br/></th>
<th style="width:100px;">Candidate Details</th>
<%!String row; %>
<% 
for(int i=0;i<rg.detail.size();i++)
{
	row=rg.getdetails(i);
%>
<tr class="data">
<td style="text-align:center;">
<td><%=row %></td>
</tr>
<%
}
%>
</tr>
</table>
</div>

</body>
</html>