<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
 response.setHeader("Cache-Control","no-cache,no-store,must-revalidate" ); // http 1.1 above
response.setHeader("Paragma","no-cache"); // http 1.0 and below
response.setHeader("Expires","0"); // proxies
 if(session.getAttribute("username")==null)
 {
	 response.sendRedirect("login.jsp");
 }
 
%>
<h2>Welcome </h2>${username}
<a href="video.jsp">videos here</a>
<form action="Logout" method="post">
<input type="submit" value="Logout">
</form>
</body>
</html>