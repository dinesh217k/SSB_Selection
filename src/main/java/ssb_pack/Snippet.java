package ssb_pack;

public class Snippet {
	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	    pageEncoding="ISO-8859-1"%>
	<%@ page import ="java.sql.Connection" %>
	<%@ page import = "java.sql.Statement" %>
	<%@ page import = "java.sql.ResultSet" %>
	<%@ page import ="java.sql.Driver" %>
	<%@ page import ="java.sql.DriverManager" %>
	<%@ page import ="java.sql.SQLException" %>
	<%@ page import ="javax.sql.*" %>
	<%@ page import ="java.util.*" %>
	<%@ page import ="java.lang.Class" %>  
	<%@ page import ="java.lang.*" %>    
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
	</head>
	<body>
	<form method = "post">
	Bid<input type="text" name="un"><br>
	Title<input type="text" name="p">
	<input type = "submit">
	<%
	String un = request.getParameter("un");
	String p =request.getParameter("p");
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver"); //establish connection to database server
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/books","root","");
		Statement stmt = con.createStatement();
		stmt = con.createStatement();
		//create an statement instance to run sql query
		//execute select query to fetch all records from table
		ResultSet rs;
		rs=stmt.executeQuery("select bid,name from books");
		String bid="",name="";
		int flag=0;
		if(un!=null){
			while(rs.next()){
				bid=rs.getString("bid");
				name=rs.getString("name");
				if(un.equals(bid) && p.equals(name)){
					//response.sendRedirect("Welcome.jsp");
					out.print("Record Found");
					flag=1;
					break;
				}
			}
		}
		if(un!=null && flag==0){
			out.println("book bid is incorrect!"+"<a href='Login.jsp>'Retry</a>");
		}
		con.close();
	}
	catch(SQLException e){
		out.println(e);
	}
	catch(Exception e){
		out.println(e);
	}
	%>
	</form>
	</body>
	</html>
}

