<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Create</title>
    <link type="text/css" href="/css/bootstrap.css" rel="stylesheet" />
</head>
<body>
<h2>Create new Adherent</h2>
<form action="/adherent/save" method="post">
    <table class="table table-bordered">
        <tbody>
            <tr><th>firstName</th><td><input type="text" name="firstName" required="required"></td></tr>
            <tr><th>lastName</th><td><input type="text" name="lastName" required="required"></td></tr>
            <tr><th>dateSubscription</th><td><input type="date" name="dateSubscription" required="required"></td></tr>
            <tr><th>dateBirth</th><td><input type="date" name="dateBirth" required="required"></td></tr>
            <tr><th>Email</th><td><input type="email" name="email" required="required"></td></tr>
            <tr><th>hasPaid</th><td><input type="checkbox" name="haspaid" required="required"></td></tr>
            <tr><th>cooptation</th><td><input type="text" name="cooptation" required="required"></td></tr>
            <tr><td colspan="2"><input type="submit" value="Add Adherent" class="btn btn-success"></tr>
        </tbody>
    </table>
</form>
<a href="/adherent/index" class="btn btn-success">Back</a>

<script type="application/javascript" src="js/jquery.js"></script>
<script type="application/javascript" src="js/bootstrap.js"></script>


</body>
</html>