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
	<%
	Usuari ISMA = (Usuari)application
			.getAttribute("usuari");
	%>
	<p>
	<%
	Set<Usuari> usuaris = (Set<Usuari>)application.getAttribute("llistaUsuaris");
	
	for(Usuari usuari : usuaris){
		%>
		<section style="border: 1">
			<%
			out.print(usuari.getNom());
			out.print(usuari.getCognoms());
			out.print(usuari.getCorreu());
			out.print(usuari.getContrasenya());
			%>
		</section>
		<%
	}
	%>
	</p>
</body>
</html>