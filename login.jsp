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

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


 <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
    integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<title>Login</title>
</head>
<body style="background:linear-gradient(to bottom right, #99ccff 0%, #ffff99 100%);background-repeat: no-repeat; height: 100vh;">
<div class="container-fluid">
<div class="row">
<div class="col-md-4 col-sm-4 col-xs-12"></div>
 <div class="col-md-4 col-sm-4 col-xs-12">
<form method = "post" style="border: 5px solid #fff; padding: 30px 70px; margin-top: 60px;
        -webkit-box-shadow: -1px 4px 26px 11px rgba(0,0,0,0.75);
-moz-box-shadow: -1px 4px 26px 11px rgba(0,0,0,0.75);
box-shadow: -1px 4px 26px 11px rgba(0,0,0,0.75);">

 <h1 style="text-align: center;font-family: Georgia, serif;"><i class="glyphicon glyphicon-user" style="color:#006699;"></i><br>LOGIN</h1>

<div class="form-group">
<label>ID</label>
<input type="text" class="form-control"name="un" placeholder="Enter Id" required>
 </div>
 <div class="form-group">
<label>Password</label>
<input type="password" class="form-control" name="p" placeholder="Password" required>
</div>

<button type="submit" class="btn btn-success btn-block">Submit</button>
</form>
</div>
 </div>
  </div>

<%
String un = request.getParameter("un");
String p =request.getParameter("p");

try{
	Class.forName("com.mysql.cj.jdbc.Driver"); 
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/connect","root","Dinesh@123");
	Statement stmt = con.createStatement();
	stmt = con.createStatement();
	ResultSet rs;
	rs=stmt.executeQuery("select id,name from new_table");
	String id="",name="";
	int flag=0;
	if(un!=null){
		while(rs.next()){
			id=rs.getString("id");
			name=rs.getString("name");
			if(un.equals(id) && p.equals(name)){
				response.sendRedirect("regester.jsp");
				out.print("Record Found");
				flag=1;
				break;
			}
		}
	}
	if(un!=null && flag==0){
		out.println("book id is incorrect!"+"<a href='Login.jsp'>Retry</a>");
	}
	con.close();
}
catch(SQLException e){
	out.println(e);
}
catch(Exception e)
{
	out.println(e);
}
%>

</body>
</html>