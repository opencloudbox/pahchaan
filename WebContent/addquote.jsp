<%@page import="quoteDaos.quoteDao"%>  
<jsp:useBean id="u" class="beans.quoteBeans"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
 <%@ page import="java.io.*" %> 
 <%@ page import="javax.servlet.*" %> 

<%  
int i=quoteDao.save(u);  
if(i>0){  
	response.sendRedirect("index.jsp");  
}else{  
response.sendRedirect("adduser-error.jsp");  
}  
%>