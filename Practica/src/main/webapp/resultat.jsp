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
	Set usuaris = (Set) application.getAttribute("llistaUsuaris");
	
	//	Aqui rebo un set
	
	for(Object obj : usuaris){
		
		//	Aqui agafo l'objecte del set i el converteixo a usuari
		
		Usuari usuari = (Usuari) obj;
		%>
		<section style="border: 1">
			<%
			out.print(usuari.getNom() + "\n");
			out.print(usuari.getCognoms() + "\n");
			out.print(usuari.getCorreu() + "\n");
			out.print(usuari.getContrasenya() + "\n");
			%>
		</section>
		<%
	}
	%>
	</p>
</body>
</html>