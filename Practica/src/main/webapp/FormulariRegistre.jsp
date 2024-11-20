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
		Usuari user = (Usuari) session.getAttribute("usuariLogejat");
		
		if(user != null){
			response.sendRedirect("Home.jsp");
		}
	%>

	<jsp:include page="ASSETS/Capçalera.jsp" />
	<form method="post">
		<label>Nom:</label>
		<input type="text" name="nom">
		<br>
		<label>Cognoms:</label>
		<input type="text" name="cognom">
		<br>
		<label>Correu electronic:</label>
		<input type="email" name="correu">
		<br>
		<label>Contrasenya:</label>
		<input type="password" name="password">
		<br>
		<input type="submit">
	</form>
	
	<jsp:include page="ASSETS/Footer.jsp" />
	
	<%
	String nom = request.getParameter("nom");
	String cognom = request.getParameter("cognom");
	String mail = request.getParameter("correu");
	String contrasenya = request.getParameter("password");
	
	
	
	
	if(nom!=null){
		Set usuaris = (Set) application.getAttribute("llistaUsuaris");
		Usuari usuari = new Usuari(nom, cognom, mail, contrasenya);
		application.setAttribute("usuari", usuari);
		usuaris.add(usuari);
	}
	
	%>

	
	
	
	


</body>
</html>


