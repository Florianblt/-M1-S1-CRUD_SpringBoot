<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>TP Java CRUD</title>
    <link type="text/css" href="/css/bootstrap.css" rel="stylesheet" />
</head>
<body>
<h2>List of Adherents</h2>
<table class="table table-bordered">
    <tr>
        <th>id</th>
        <th>firstName</th>
        <th>lastName</th>
        <th>dateSubscription</th>
        <th>dateBirth</th>
        <th>email</th>
        <th>hasPaid</th>
        <th>cooptation</th>
    </tr>
    <tbody>
    <c:forEach items="${adherents}" var="adherent" varStatus="itr">
        <tr>
            <td>${itr.index+1}</td>
            <td>${adherent.firstName}</td>
            <td>${adherent.lastName}</td>
            <td>${adherent.dateSubscription}</td>
            <td>${adherent.dateBirth}</td>
            <td>${adherent.email}</td>
            <td>${adherent.hasPaid}</td>
            <td>${adherent.cooptation}</td>
            <td><a href="/adherent/edit/${adherent.id}" class="btn btn-warning">Edit</a> </td>
        </tr>
    </c:forEach>
    </tbody>

</table>
<a href="/adherent/create" class="btn btn-success">Add Adherent</a>

<script type="application/javascript" src="js/jquery.js"></script>
<script type="application/javascript" src="js/bootstrap.js"></script>


</body>
</html>