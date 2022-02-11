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
<title>Register</title>
<link rel="stylesheet" href="register.css">
</head>
<body>
	<div>
		<div class="d-flex flex-row justify-content-around head">
			<div>
				<img
					src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlqXMy8higNO96PhcWpp3liXZVlEe_PwuBag&usqp=CAU"
					alt="logo" class="company-logo" />
			</div>
			<div>
				<h1 class="company-name">
					THOUGHTF<span class="o-letter">O</span><sub class="sub"><i
						class="bi bi-circle-fill icon"></i></sub>CUS
				</h1>
			</div>
			<div class="links">
				<a target="_blank"
					href="https://in.linkedin.com/company/thoughtfocus">Linkedin</a><br />
				<a target="_blank"
					href="https://mobile.twitter.com/thoughtfocustec?lang=en">Twitter</a><br />
				<a target="_blank" href="https://m.facebook.com/247338368617473/">Facebook</a>
			</div>
		</div>
	</div>

	<div class="form-container">
		<h1 class="heading">New Employee Register form</h1>
		<form id="form_register" method="post" action="reg.do">
			<div class="input-group detail-container">
				<span class="input-group-text">First Name</span> <input
					id="firstname" type="text" aria-label="First name"
					class="form-control" required name="firstName" />
			</div>
			<span id="fname-warning" class="validations"></span>

			<div class="input-group detail-container">
				<span class="input-group-text">Last Name</span> <input id="lastname"
					type="text" aria-label="Last name" class="form-control" required
					name="lastName" />
			</div>
			<span id="lname-warning" class="validations"></span>
			<div class="input-group detail-container">
				<span class="input-group-text">Gender</span> <input
					id="floatingInput" type="text" aria-label="Gender"
					class="form-control" name="gender" />
			</div>
			<span id="user-warning" class="validations"></span>

			<div class="input-group detail-container">
				<span class="input-group-text">Age</span> <input id="age"
					type="text" aria-label="address" class="form-control" required
					name="age" />
			</div>
			<span id="address-warning" class="validations"></span>
			<div class="input-group detail-container">
				<span class="input-group-text">salary</span> <input id="salary"
					type="number" aria-label="salary" class="form-control"
					maxlength="10" required name="salary" />
			</div>
			<span id="number-warning" class="validations"></span>
			<button id="submitdetails" type="submit"
				class="submit-button btn btn-success">Submit</button>
		</form>

		<form action="getAllEmployee.do" method="get">
			<input type="submit" value="Employee Details" class="submit-button btn btn-success">
		</form>
		<p class="mt-5 mb-3 text-muted" style="color: white !important;">
			All rights &copy; 2022</p>
	</div>
	<script src=""></script>
</body>
</html>