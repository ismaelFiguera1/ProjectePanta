<%@page import="java.util.Set"%>
<%@page import="almata.Usuari"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Cookies</h1>


	
	<%
	Cookie[] cookies = null;
	cookies = request.getCookies();
	if (cookies != null) {
	out.println("Trobades galetes amb valors:");
	
	%> <br><br><br><br> <%
	
	for (int i = 0; i < cookies.length ; i++) {
		Cookie cuki = cookies[i];
		out.print("Nom: "+ cuki.getName() +".       Valor: "+ cuki.getValue());
		%> <br><br> <%
	}
	
	}
	%>
	



</body>
</html>