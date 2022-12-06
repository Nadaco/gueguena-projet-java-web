<%@ page import="iut2.gueguenaprojetjavaweb.GestionFactory" %>
<%@ page import="iut2.gueguenaprojetjavaweb.Etudiant" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>

<jsp:useBean id="etudiant" class="iut2.gueguenaprojetjavaweb.Etudiant" scope="request" />
<jsp:useBean id="nbAbsences" type="java.lang.Integer" scope="request" />

<html>
<head>
    <title>Projet - étape 1</title>
</head>
<h1>Projet - étape 1</h1>
<h2>Fiche détaillée d'un étudiant</h2>

<div>Nom : <jsp:getProperty name="etudiant" property="nom"/></div>
<div>Prénom : <jsp:getProperty name="etudiant" property="prenom"/></div>
<div>Nombre d'absence : <%= nbAbsences%> </div>

<br/>
<a href="index.jsp">retour à la liste d'étudiants</a>
<body>

<br/>

</body>
</html>