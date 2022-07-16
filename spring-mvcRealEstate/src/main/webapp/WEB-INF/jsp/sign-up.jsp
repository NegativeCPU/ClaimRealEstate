<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<meta charset="utf-8">
<title>User Sign up</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">

<!-- Custom styles for this template -->
<link href="cover.css" rel="stylesheet">
</head>


<body class="text-center">
	<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
		<header class="masthead mb-auto">
			<div class="inner">
				<h3 class="masthead-brand">Sign up</h3>
				<nav class="nav nav-masthead justify-content-center">
					<a class="nav-link active" href="/">Home</a>
				</nav>
			</div>
		</header>

		<main role="main" class="inner cover">


			<form:form modelAttribute="user" action="/sign-up" method="post">

				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="inputFirstName">First Name</label>
						<form:input path="firstName" type="text" class="form-control"
							id="inputFirstName" />
					</div>
					<div class="form-group col-md-6">
						<label for="inputLastName">Last Name</label>
						<form:input path="lastName" type="text" class="form-control"
							id="inputLastName" />
					</div>
				</div>


				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="inputEmail4">Email</label>
						<form:input path="email" type="text" class="form-control"
							id="inputEmail4" />
					</div>
					<div class="form-group col-md-6">
						<label for="inputPassword4">Password</label>
						<form:input path="password" type="password" class="form-control"
							id="inputPassword4" />
					</div>
				</div>
				<div class="form-group">
					<label for="inputPhone">Phone Number</label>
					<form:input path="phone" type="text" class="form-control"
						id="inputPhone" />
					<label for="inputAddress">Street</label>
					<form:input path="address.street" type="text" class="form-control"
						id="inputAddress" placeholder="1234 Main St" />
				</div>
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="inputCity">City</label>
						<form:input path="address.city" type="text" class="form-control"
							id="inputCity" />
					</div>
					<div class="form-group col-md-4">
						<label for="inputState">State</label>
						<form:select path="address.state" id="inputState"
							class="form-control">
							<option selected>Choose...</option>
							<option value="AL">AL</option>
							<option value="AK">AK</option>
							<option value="AZ">AZ</option>
							<option value="AR">AR</option>
							<option value="CA">CA</option>
							<option value="CZ">CZ</option>
							<option value="CO">CO</option>
							<option value="CT">CT</option>
							<option value="DE">DE</option>
							<option value="DC">DC</option>
							<option value="FL">FL</option>
							<option value="GA">GA</option>
							<option value="GU">GU</option>
							<option value="HI">HI</option>
							<option value="ID">ID</option>
							<option value="IL">IL</option>
							<option value="IN">IN</option>
							<option value="IA">IA</option>
							<option value="KA">KS</option>
							<option value="KY">KY</option>
							<option value="LA">LA</option>
							<option value="ME">ME</option>
							<option value="MD">MD</option>
							<option value="MA">MA</option>
							<option value="MI">MI</option>
							<option value="MN">MN</option>
							<option value="MS">MS</option>
							<option value="MO">MO</option>
							<option value="MT">MT</option>
							<option value="NE">NE</option>
							<option value="NV">NV</option>
							<option value="NH">NH</option>
							<option value="NJ">NJ</option>
							<option value="NM">NM</option>
							<option value="NY">NY</option>
							<option value="NC">NC</option>
							<option value="ND">ND</option>
							<option value="OH">OH</option>
							<option value="OR">OR</option>
							<option value="PA">PA</option>
							<option value="PR">PR</option>
							<option value="RI">RI</option>
							<option value="SC">SC</option>
							<option value="SD">SD</option>
							<option value="TN">TN</option>
							<option value="TX">TX</option>
							<option value="UT">UT</option>
							<option value="VT">VT</option>
							<option value="VI">VI</option>
							<option value="VA">VA</option>
							<option value="WA">WA</option>
							<option value="WV">WV</option>
							<option value="WI">WI</option>
							<option value="WY">WY</option>
							<option value="FPO/AP">AP</option>
						</form:select>
					</div>
					<div class="form-group col-md-2">
						<label for="inputZip">Zip</label>
						<form:input path="address.zip" type="text" class="form-control"
							id="inputZip" />
					</div>
				</div>


				<!-- Default radio -->
				<div class="form-check">
					<form:radiobutton path="isAgent" value="1" class="form-check-input"
						name="flexRadioDefault" id="flexRadioDefault1" />
					<label class="form-check-label" for="flexRadioDefault1">
						Agent </label> <br>
					<form:radiobutton path="isAgent" value="0" class="form-check-input"
						name="flexRadioDefault" id="flexRadioDefault2" />
					<label class="form-check-label" for="flexRadioDefault2">
						Customer </label>
				</div>
				<button type="submit" class="btn btn-primary">Sign Up</button>
			</form:form>

		</main>
	</div>

</body>
</html>


