<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="addquote.jsp" method="post">  
<table>  
<tr><td>Title:</td><td><input type="text" name="title"/></td></tr>  
<tr><td>Quote:</td><td><input type="text" name="quote"/></td></tr>  
<tr><td>Photo:</td><td><input type="text" name="photo" placeholder="Photo Link Here"/></td></tr>
<tr><td>Date:</td><td><input type="date" name="date" /></td></tr>

<tr><td colspan="2"><input type="submit" value="Add User"/></td></tr>  
</table>  
</form>  
</body>
</html>