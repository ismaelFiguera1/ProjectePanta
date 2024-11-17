<%@page import="java.util.Set"%>
<%@page import="java.util.LinkedHashSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="almata.Usuari" %> 
<%@ page import="java.util.Set, java.util.LinkedHashSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Usuari usuari1 = (Usuari) session.getAttribute("usuariLogejat");
		
		if(usuari1 != null){
			response.sendRedirect("Home.jsp");
		}
	%>


	<form method="post">
		<label>Nom:</label>
		<input type="text" name="nom">
		<% 
		String nom = request.getParameter("nom");
		%>
		<br>
		<label>Cognoms:</label>
		<input type="text" name="cognom">
		<% 
		String cognom = request.getParameter("cognom");
		%>
		<br>
		<label>Correu electronic:</label>
		<input type="email" name="correu">
		<% 
		String mail = request.getParameter("correu");
		%>
		<br>
		<label>Contrasenya:</label>
		<input type="password" name="password">
		<% 
		String contrasenya = request.getParameter("password");
		%>
		<br>
		<input type="submit">
	</form>
	

	
	<%if(nom!=null){
		Set usuaris = (Set) application.getAttribute("llistaUsuaris");
		Usuari usuari = new Usuari(nom, cognom, mail, contrasenya);
		application.setAttribute("usuari", usuari);
		usuaris.add(usuari);
	}
	
	%>

	
	
	
	


</body>
</html>


