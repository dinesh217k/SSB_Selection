<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DINESH WEB</title>
</head>
<body>
<%!String str="1"; %>
<div style="text-align: center;">
 <form style="color:green;">
 <h1><label>Registration Form</label></h1><br><br>
 First name<input type="text" name="un"><br>
 Email ID<input type="text" name="email"><br>
 password<input type="password" name="pwd"><br>
 <input type="radio" name="status">Married<br>
 <input type="radio" name="status">Un-married<br><br>
 GENDER<br>
 <input type="radio"name="gender">Male<br>
 <input type="radio"name="gender">Female<br>
 <input type="radio"name="gender">Others<br><br>
 Certified<br>
 <input type="checkbox" name="c">C & Ds<br>
 <input type="checkbox" name="java">Java<br>
 <input type="checkbox"name="sql">Mysql<br>
 <select name="country">
 <option value="1">india</option>
 <option value="2">USA</option>
 <option value="3">UK</option>
 </select><br>
 <button type="submit" onclick="displayRadioValue()">Submit</button>
<br>
</div>
<div>
<script>
function displayRadioValue()
{
	var ele=document.getElementByName("gender");
	for(i=0;i<ele.length;i++)
		{
			if(ele[i].checked)
				document.getElementByid("result").innerHTML="Gender:"+ele[i].value;
		}
	}
</script>
</div>
 </form>
</body>
</html>