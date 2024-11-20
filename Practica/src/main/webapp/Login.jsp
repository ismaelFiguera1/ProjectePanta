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
	
	.credencials-incorrectes {
		padding: 2%;
		background-color: red;
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
	
	<%
	String correu = request.getParameter("correu");
	String contrasenya = request.getParameter("contrasenya");
	String text="";
	

	
	
	if(correu!=null){
		Set usuaris = (Set) application.getAttribute("llistaUsuaris");
		Set usuarisLogejats = (Set) application.getAttribute("llistaUsuarisLogejats");
		
		
		boolean trobat = false;
		
		for (Object obj: usuaris){
			Usuari usuari = (Usuari) obj;
			String mail = usuari.getCorreu();
			String password = usuari.getContrasenya();
			if(mail.equals(correu) && password.equals(contrasenya)){
				usuarisLogejats.add(usuari);
				session.setAttribute("usuariLogejat", usuari);
				response.sendRedirect("Home.jsp");
			}
			
		}
		
		if(trobat==false){
			text = "Credencials incorrectes"; 
			%><p class="credencials-incorrectes"><%=text %></p><%
		}
	}
	%>
	
	
	
	<jsp:include page="ASSETS/Footer.jsp" />
</body>
</html>