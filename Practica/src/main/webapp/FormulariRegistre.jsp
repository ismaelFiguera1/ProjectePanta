<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			out.print(nom);
		%>
		<br>
		<label>Cognoms:</label>
		<input type="text" name="cognom">
		<% 
		String cognom = request.getParameter("cognom");
			out.print(cognom);
		%>
		<br>
		<label>Correu electronic:</label>
		<input type="email" name="correu">
		<% 
		String mail = request.getParameter("correu");
			out.print(mail);
		%>
		<br>
		<label>Contrasenya:</label>
		<input type="password" name="password">
		<% 
		String contrasenya = request.getParameter("password");
			out.print(contrasenya);
		%>
		<br>
		<input type="submit">
	</form>
</body>
</html>