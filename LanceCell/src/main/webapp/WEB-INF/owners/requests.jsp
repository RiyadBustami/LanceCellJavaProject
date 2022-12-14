<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Requests</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>

<div>
<c:forEach var="project" items="${myProjects}">
<h3 style="margin-top:2%;margin-left:7%">${project.title}</h3>
<table style="width: 60%;margin-left: 8%;margin-top:4%" class="table table-striped table-bordered ">
	<thead>
		<tr>
			<th>Programmer Name</th>
			<th>Profile</th>
			<th>Actions</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="programmer" items="${project.requests}">
			<tr>
				<td>${programmer.firstName } ${programmer.lastName }</td>
				<td><a href="/programmers/Profile/${programmer.id }">Show Profile</a></td>
				<td><a href="/owners/accept/${project.id}/${programmer.id}">Accept</a> | <a href="/owners/reject/${project.id}/${programmer.id}">Reject</a></td>
			</tr>
		</c:forEach>
	</tbody>
</table>
</c:forEach>
</div>
  <a style=" font-size: 15px;margin-left:10%" class="btn btn-danger"   href="/projects/Dashboard">Dashboard</a>
</body>
</html>