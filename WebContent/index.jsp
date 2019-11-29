<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="https://fonts.googleapis.com/css?family=Rajdhani&display=swap" rel="stylesheet">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<%@page import="quoteDaos.quoteDao,beans.quoteBeans.*,java.util.*"%>  
<%@page import="beans.quoteBeans"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ page import="java.util.*, java.io.*" %>
<%@page import="java.time.LocalDate" %>
    <title>Hello, world!</title>
  </head>
  <body>
  
  
  
<%

	List<quoteBeans> list = quoteDao.getAllRecords();  
	request.setAttribute("list",list);  

%> 
  
  <!-- Image and text -->
<nav class="navbar navbar-light bg-light">
  <a class="navbar-brand" href="#">
    <img src="/docs/4.3/assets/brand/bootstrap-solid.svg" width="30" height="30" class="d-inline-block align-top" alt="">
    Bootstrap
  </a>
</nav>
<section class="jumbotron rounded-0">

</section>
<div class="container">
<div class="card-columns">

<%
String s="Y";
LocalDate ld = LocalDate.now();


String aajkadate="2019-11-19";
request.setAttribute("s",s);

request.setAttribute("ld",ld);
request.setAttribute("aajkadate",aajkadate);
Date  d= new Date();
out.println("DD"+d);
%>
<c:if test="${ld ne aajkadate }">
<h1>Hello</h1>
<input type="submit" value="Submit">
</c:if>
<%-- <c:choose>
<c:when test="${ld eq aajkadate }">
<h1>H E L L O</h1>

</c:when>
<c:otherwise>
<h1>Hi</h1>
</c:otherwise>
</c:choose> --%>

 <c:forEach items="${list}" var="u">
  <div class="card">
  <c:if test="${u.getPhoto() ne null or u.getPhoto() eq null}">
    <img src="${u.getPhoto()}" class="card-img-top">
    </c:if>
    <div class="card-body">
      <h5 class="card-title">${u.getTitle()}</h5>
      <p class="card-text text-style">${u.getQuote()}</p>
    </div>
  </div>
  </c:forEach>
 
</div>
</div>
<style>
.text-style{
font-family: 'Rajdhani', sans-serif;
}
</style>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>