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
	//	Aqui comprovo que l'usuari estigui a la sessio
	
	//	Faig un cast perque el getAtributte sempre retorna un Object
		Usuari user = (Usuari) session.getAttribute("usuariLogejat");
	
	Cookie[] cookiesNavegador = null; 
	cookiesNavegador=request.getCookies();
	
	if(!(cookiesNavegador.equals(null))){
		for(Cookie a:cookiesNavegador){
			if(!a.getName().equals("email") && user == null){
//				Aqui dic si la llista es buida em retorni al home i no hi ha cookie
				response.sendRedirect("Home.jsp");
return;
			}
		}
		
		
	}
	
	


	
	%>


<jsp:include page="ASSETS/Capçalera.jsp" />
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
	<jsp:include page="ASSETS/Footer.jsp" />
	
	<%
	String sortir = "logout";
	String tancar = request.getParameter("logout");
		if(tancar!=null && tancar.equals(sortir)){
			session.removeAttribute("usuariLogejat");
			
			session.invalidate();	//	Si tinc altres variables a la sessio s'esborren, el invalidate es opcional
			response.sendRedirect("Home.jsp");
		}
	%>
	
	
</body>
</html>