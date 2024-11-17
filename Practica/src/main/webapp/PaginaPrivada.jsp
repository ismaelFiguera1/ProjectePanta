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
	//	Aqui comprovo que l'usuari estigui a la sessio
	
	//	Faig un cast perque el getAtributte sempre retorna un Object
	Usuari usuari =	(Usuari) session.getAttribute("usuariLogejat");
	
	//	Aqui dic si l'usuari no existeix em retorni a la pestanya login
	if(usuari == null){
		response.sendRedirect("Login.jsp");
	}
	
	%>



	<h1>Telefon Atencio Preferent a usuaris loggejats</h1>
	<section>
		<h3>Telefon:</h3>
		<span>686 536 520</span>
	</section>
	<form method="post">
	<button name="logout" value="logout" type="submit">
		Tancar sessio
	</button>
	</form>
	
	<%
	String sortir = "logout";
	String tancar = request.getParameter("logout");
		if(tancar!=null && tancar.equals(sortir)){
			session.invalidate();
			response.sendRedirect("Home.jsp");
		}
	%>
	
	
</body>
</html>