<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="./base.jsp"%>
</head>
<body>
	<div class="m-5">
		<table class="table table-hover">
			<thead>
				<tr>
					<th scope="col">id</th>
					<th scope="col">firstName</th>
					<th scope="col">lastName</th>
					<th scope="col">gender</th>
					<th scope="col">age</th>
					<th scope="col">salary</th>
					<th scope="col">Edit</th>
					<th scope="col">Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="emp" items="${employee}">
					<tr>
						<td class="table-plus">${emp.id}</td>
						<td>${emp.firstName}</td>
						<td>${emp.lastName}</td>
						<td>${emp.gender}</td>
						<td>${emp.age}</td>
						<td>${emp.salary}</td>
						<td><a href="update_employee.jsp" class="btn btn-warning">
								Edit </a></td>
						<td><a href="deleteEmployee/${emp.id}.do" class="btn btn-danger">
								Delete </a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>
