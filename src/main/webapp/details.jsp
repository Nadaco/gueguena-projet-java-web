<%@ page import="iut2.gueguenaprojetjavaweb.GestionFactory" %>
<%@ page import="iut2.gueguenaprojetjavaweb.Etudiant" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    Etudiant etudiant = GestionFactory.getEtudiantById(id);
%>

<html>
<head>
    <title>Projet - étape 1</title>
</head>
<h1>Projet - étape 1</h1>
<h2>Fiche détaillée d'un étudiant</h2>

<div>Nom : <%=etudiant.getNom()%>
</div>
<div>Prénom : <%=etudiant.getPrenom()%>
</div>
<div>Nombre d'absence : <%=GestionFactory.getAbsencesByEtudiantId(id)%>
</div>
<br/>
<a href="index.jsp">retour à la liste d'étudiants</a>
<body>

<br/>

</body>
</html>