<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<%@ page import="iut2.gueguenaprojetjavaweb.GestionFactory" %>
<%@ page import="iut2.gueguenaprojetjavaweb.Etudiant" %>

<html>
<head>
    <title>Projet - étape 2</title>
</head>
<body>
<h1>Projet - étape 2</h1>
<h2>Liste des étudiants</h2>
<%for (Etudiant etudiant : GestionFactory.getEtudiants()) {%>
<div>
    <a href="servlettraitementdetails?id=<%=etudiant.getId()%>"><%=etudiant.getPrenom()%>
        <%=etudiant.getNom()%>
    </a>
</div>
<%}%>
<br/>
</body>
</html>