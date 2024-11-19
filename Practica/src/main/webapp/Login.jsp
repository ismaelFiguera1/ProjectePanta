<%@page import="almata.Usuari"%>
<%@page import="java.util.Set"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.baix {
		display: flex;
		gap: 20px;
	}
	

</style>
</head>
<body>
<jsp:include page="ASSETS/Capçalera.jsp" />
	<h1>Login</h1>
	
	<section>
	<form method="post">
		<article>
			<label>Correu ectronic</label>
			<input type="email" name="correu">
		</article>
		<article>
			<label>Contrasenya</label>
			<input type="password" name="contrasenya">
		</article>
		<article class="baix">
			<article>
				<input type="checkbox">			
				<label>Recordar-me</label>
			</article>
			<button type="submit">
				Entrar
			</button>
		</article>
	</form>
	</section>
	<jsp:include page="ASSETS/Footer.jsp" />
	<%
	String correu = request.getParameter("correu");
	String contrasenya = request.getParameter("contrasenya");
	
	
	if(correu!=null){
		Set usuaris = (Set) application.getAttribute("llistaUsuaris");
		Set usuarisLogejats = (Set) session.getAttribute("llistaUsuarisLogejats");
		
		
		for(Object obj : usuaris){
			Usuari usuari = (Usuari) obj;
			String mail = usuari.getCorreu();
			String password = usuari.getContrasenya();
			
			if(mail.equals(correu) && password.equals(contrasenya)){
				usuarisLogejats.add(usuari);
				response.sendRedirect("Home.jsp");
			}
		}
	}

		
		
	%>
</body>
</html>