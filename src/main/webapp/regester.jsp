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
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


 <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
    integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<title>register</title>
</head>
<body style="background:linear-gradient(to bottom right, #99ccff 0%, #ffff99 100%);background-repeat: no-repeat; height: 100vh;">
<div class="container-fluid">
<div class="row">
<div class="col-md-1 col-sm-4 col-xs-12"></div>
 <div class="col-md-10 col-sm-6 col-xs-12">

<form  method="post" style="border: 0px #fff; padding: 20px 65px; margin-top: 10px;
        -webkit-box-shadow: -1px 4px 26px 11px rgba(0,0,0,0.75);
-moz-box-shadow: -1px 4px 26px 11px rgba(0,0,0,0.75);
box-shadow: -1px 4px 26px 11px rgba(0,0,0,0.75);">

<h1 style="text-align: center;font-family: Georgia, serif;">Candidate Registration <i class="glyphicon glyphicon-user" style="color: #004080;"></i></h1>

<table max-width:100% >
<tr>
	<td style="padding: 10px;"><label>First Name</label></td>
	<td style="padding: 10px;"><input type="text" class="form-control" name="fname" placeholder="Enter first name" required></td>
	<td style="padding: 10px;"><label>10 %</label></td>
	<td style="padding: 10px;"><input type="number" class="form-control" name="10%" placeholder="Enter 10th percentage" required></td>
	<td style="padding: 10px;"><label>Aadhar Id</label></td>
	<td style="padding: 10px;"><input type="number" class="form-control" name="aid" placeholder="Select" required></td>
</tr>
<tr>
	<td style="padding: 10px;"><label>Last Name</label></td>
	<td style="padding: 10px;"><input type="text" class="form-control" name="lname" placeholder="Enter Last name" required></td>
	<td style="padding: 10px;"><label>Year of pass</label></td>
	<td style="padding: 10px;"><input type="number" class="form-control" name="10year" placeholder="Enter Year" required></td>
	<td style="padding: 10px;"><label>City</label></td>
	<td style="padding: 10px;"><input type="text" class="form-control" name="city" placeholder="Enter City" required></td>
</tr>
<tr>
	<td style="padding: 10px;"><label for="gender">Gender</label></td>
	<td style="padding: 10px;"><select id ="gender" name="gender" required >
	<option value="">Choose...</option>
	<option value="Male">MALE</option>
	<option value="Female">FEMALE</option>
	<option value="Others">OTHERS</option>
	</select>
	</td>
	<td style="padding: 10px;"><label>12 %</label></td>
	<td style="padding: 10px;"><input type="number" class="form-control" name="12%" placeholder="Enter 12th percentage" required></td>
	<td style="padding: 10px;"><label>State</label></td>
    <td style="padding: 10px;"><input type="text" class="form-control" name="state" placeholder="Enter State" required></td>
</tr>
<tr>
	<td style="padding: 10px;"><label>Email</label></td>
	<td style="padding: 10px;"><input type="Email" class="form-control" name="email" placeholder="Enter Email" required></td>
	<td style="padding: 10px;"><label>Year of pass</label></td>
	<td style="padding: 10px;"><input type="number" class="form-control" name="12year" placeholder="Enter Year" required></td>
	<td style="padding: 10px;"><label>Pin Code</label></td>
	<td style="padding: 10px;"><input type="number" class="form-control" name="zip" placeholder="Enter Pin code" required></td>
</tr>
<tr>
	<td style="padding: 10px;"><label>Contact No</label></td>
	<td style="padding: 10px;"><input type="number" class="form-control" name="number" placeholder="Enter phone no" required></td>
	<td style="padding: 10px;"><label>Degree %</label></td>
	<td style="padding: 10px;"><input type="number" class="form-control" name="deg%" placeholder="Enter Degree percentage" required></td>
	<td style="padding: 10px;"><label>Role</label></td>
    <td style="padding: 10px;"><select id ="role" name="role" required >
	<option value="">Choose...</option>
	<option value="jawan">Jawan</option>
	<option value="technical">Technical</option>
	<option value="graduate">Graduate</option>
	</select>
	</td>
</tr>
<tr>
	<td style="padding: 10px;"><label>Date of Birth</label></td>
	<td style="padding: 10px;"><input type="date" class="form-control" name="dob" required></td>
	<td style="padding: 10px;"><label>Year of pass</label></td>
	<td style="padding: 10px;"><input type="number" class="form-control" name="degyear" placeholder="Enter Degree Year" required></td>
	
</tr>

<tr>
<td></td>
<td colspan="3" style="text-align:center;"><label><input type="checkbox" required>I hereby declare all the above information is true</label></td>
</tr>
<tr>
	<td></td>
	<td><td><button type="submit" class="btn btn-success btn-ex-lg">SUBMIT</button></td>
	<td></td>
</tr>
</table>
</form>
</div>
</div>
</div>

<%
try
{
	String fname=request.getParameter("fname");
	String lname=request.getParameter("lname");
	String gender=request.getParameter("gender");
	String email=request.getParameter("email");
	String number=request.getParameter("number");
	String dob=request.getParameter("dob");
	String per_10=request.getParameter("10%");
	String year_10=request.getParameter("10year");
	String per_12=request.getParameter("12%");
	String year_12=request.getParameter("12year");
	String per_deg=request.getParameter("deg%");
	String year_deg=request.getParameter("degyear");
	String aid=request.getParameter("aid");
	String city=request.getParameter("city");
	String state=request.getParameter("state");
	String zip=request.getParameter("zip");
	String role=request.getParameter("role");
	
	Class.forName("com.mysql.cj.jdbc.Driver"); 
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/connect","root","Dinesh@123");
	Statement stmt = con.createStatement();
	stmt = con.createStatement();
	String sql="insert into register(aid,fname,lname,gender,dob,number,email,per_10,year_10,per_12,year_12,per_deg,year_deg,city,state,zip,role) values('"+aid+"','"+fname+"','"+lname+"','"+gender+"','"+dob+"','"+number+"','"+email+"','"+per_10+"','"+year_10+"','"+per_12+"','"+year_12+"','"+per_deg+"','"+year_deg+"','"+city+"','"+state+"','"+zip+"','"+role+"')";
	stmt.executeUpdate(sql);
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