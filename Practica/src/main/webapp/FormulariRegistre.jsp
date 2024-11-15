<%@page import="java.util.LinkedHashSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="almata.Usuari" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
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
	
	<%
	Set<String> usuaris = new LinkedHashSet<>();
	usuaris.add("Juan");
	%>
	
	<li><% out.print(usuaris); %></li>
	
	<%if(nom!=null){
		Usuari usuari = new Usuari(nom, cognom, mail, contrasenya);
		application.setAttribute("usuari", usuari);
	}
	
	%>
	
	
	


</body>
</html>

	<%
// per fixar-la dins un JSP
application.setAttribute("variable", new Integer(55));
// Per llegir-la dins el mateix o un altre JSP
Integer valor = (Integer)application
.getAttribute("variable");

out.print(valor);
%>
