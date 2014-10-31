<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.navitia.datastore.Utilisateur" %>

<!DOCTYPE html>

<html>
	<head>
		<meta charset="utf-8" />
		<title>Meet Me At The Station</title>
	</head>
	
	<body>
		<div style="text-align:center;">
			<h1>
				Bienvenue
				<% 
					Utilisateur utilisateur = (Utilisateur) request.getAttribute("utilisateur");
				%>
				<%=	utilisateur.getPrenom() %>
				<%=	utilisateur.getNom() %>
				!
			</h1>
			
			<form action="/ajouterunami" method="POST">
				<p style="padding-top:20px">
				<h2>Ajouter un ami</h2>
					<input type="text" name="prenom" placeholder="Prenom" style="margin-right:15px"/>
					<input type="text" name="nom" placeholder="Nom" style="margin-right:15px"/>
				
					<input type="submit" value="Ajouter"/>
				</p>
		</form>
		</div>
	</body>
</html>
