<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Edit</title>
    <link type="text/css" href="/css/bootstrap.css" rel="stylesheet" />
</head>
<body>
<h2>Edit Adherent</h2>
<form action="/adherent/update" method="post">
    <input type="hidden" name="id" value="${adherent.id}">
    <table class="table table-bordered">
        <tbody>
        <tr><th>firstName</th><td><input type="text" name="firstName" required="required" value="${adherent.firstName}"></td></tr>
        <tr><th>lastName</th><td><input type="text" name="lastName" required="required" value="${adherent.lastName}"></td></tr>
        <tr><th>dateSubscription</th><td><input type="date" name="dateSubscription" required="required" value="${adherent.dateSubscription}"></td></tr>
        <tr><th>dateBirth</th><td><input type="date" name="dateBirth" required="required" value="${adherent.dateBirth}"></td></tr>
        <tr><th>Email</th><td><input type="email" name="email" required="required" value="${adherent.email}"></td></tr>
        <tr><th>hasPaid</th><td><input type="checkbox" name="haspaid" required="required" value="${adherent.hasPaid}"></td></tr>
        <tr><th>cooptation</th><td><input type="text" name="cooptation" required="required" value="${adherent.cooptation}"></td></tr>
        <tr><td colspan="2"><input type="submit" value="Edit Adherent" class="btn btn-success"></tr>
        </tbody>
    </table>
</form>
<a href="/adherent/index" class="btn btn-success">Back</a>

<script type="application/javascript" src="js/jquery.js"></script>
<script type="application/javascript" src="js/bootstrap.js"></script>


</body>
</html>