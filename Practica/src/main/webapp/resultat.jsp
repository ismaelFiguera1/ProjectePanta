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
		<li>
		<%
		out.print(ISMA.getNom());
		%>
		</li>
		<li>
		<%
		out.print(ISMA.getCognoms());
		%>
		</li>
				<li>
		<%
		out.print(ISMA.getContrasenya());
		%>
		</li>
				<li>
		<%
		out.print(ISMA.getCorreu());
		%>
		</li>
	</p>
</body>
</html>