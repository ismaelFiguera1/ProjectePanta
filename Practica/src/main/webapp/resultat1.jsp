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
	<h1>Usuari Logejat</h1>
	<%
	
	// Tinc que fer el cast a Usuari, perque el setAtribute em guarda un objecte i aqui vull rebre l'usuari
	
Set usuaris = (Set) session.getAttribute("llistaUsuarisLogejats");
	
	for(Object obj : usuaris){
		Usuari user = (Usuari) obj;
		out.print(user.toString());
		 %> <br><br><br><br><br><%
	}
	%>
</body>
</html>