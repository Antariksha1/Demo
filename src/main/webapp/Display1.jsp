<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Calculator</title>
<style type="text/css">
h1{
	color: blue;
	text-align: center;
	}
input {
	width: 50px;
}

</style>
</head>
<body>
<h1>Calculator</h1>
<%
String name="";
String name1="";
String name2="";
name=(String)session.getAttribute("result");
name1=(String)session.getAttribute("input1");
name2=(String)session.getAttribute("input2");

%> 
<h4>Enter Input</h4>
<form action="add" method="post">
<input type="text" id="no1" name="input1" value="<%=name1  %>">&nbsp;&nbsp; + &nbsp;&nbsp;
<input type="text" id="no2" name="input2" value="<%=name2  %>"> &nbsp;&nbsp;&nbsp; =
<input type="text" readonly="readonly" value="<%=name  %>"  > &nbsp;&nbsp; 


<br><br>
<div style="border: 5">
<button id="commandButton1" type="submit" name="button1" value="+" style=" width: 75px;">+</button> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<button id="commandButton2" type="submit" name="button1" value="-" style=" width: 75px;">-</button><br><br><br>
<button id="commandButton3" type="submit" name="button1" value="*" style=" width: 75px;">*</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<button id="commandButton4" type="submit" name="button1" value="/" style=" width: 75px;">/</button>
</div>


<br><br>


<br><br>


<br><br>



</form>
</body>
</html>