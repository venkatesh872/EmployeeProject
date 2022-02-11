<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
	integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
	integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
	crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form class="row g-3 m-5" action="update.do" method="post">
		<div class="col-md-6">
			<label for="inputEmail4" class="form-label">id</label> <input
				type="text" class="form-control" id="inputEmail4" name="id">
		</div>
		<div class="col-md-6">
			<label for="inputPassword4" class="form-label">first name</label> <input
				type="text" class="form-control" id="inputPassword4" name="firstName">
		</div>
		<div class="col-12">
			<label for="inputAddress" class="form-label">last name</label> <input
				type="text" class="form-control" id="inputAddress"
				 name="lastName">
		</div>
		<div class="col-12">
			<label for="inputAddress2" class="form-label">gender</label> <input
				type="text" class="form-control" id="inputAddress2"
				 name="gender">
		</div>
		<div class="col-md-6">
			<label for="inputCity" class="form-label">age</label> <input
				type="text" class="form-control" id="inputCity" name="age">
		</div>
		<div class="col-md-2">
			<label for="inputZip" class="form-label">salary</label> <input
				type="text" class="form-control" id="inputZip" name="salary">
		</div>
		<div class="col-12">
			<button type="submit" class="btn btn-primary">update</button>
		</div>
	</form>
</body>
</html>