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
	<h1>Usuari Logejat</h1>
	<%
	
	// Tinc que fer el cast a Usuari, perque el setAtribute em guarda un objecte i aqui vull rebre l'usuari
	
	Usuari usuari = (Usuari) session.getAttribute("usuariLogejat");
	out.print(usuari.getNom()); %> <br> <%
	out.print(usuari.getContrasenya() + "\n"); %> <br> <%
	out.print(usuari.getCorreu() + "\n");
	%>
</body>
</html>