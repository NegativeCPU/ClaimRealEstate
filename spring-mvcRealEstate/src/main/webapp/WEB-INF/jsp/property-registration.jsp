<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body class="text-center">
	<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
		<header class="masthead mb-auto">
			<div class="inner">
				<h3 class="masthead-brand">Register Property</h3>
				<nav class="nav nav-masthead justify-content-center">
					<a class="nav-link active" href="/agent-profile">Profile</a>
				</nav>
			</div>
		</header>

		<main role="main" class="inner cover">


			<form:form modelAttribute="agentProperty"
				action="/property-registration" method="post">

				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="inputSqft">Square Foot</label>
						<form:input path="sqft" type="text" class="form-control"
							id="inputSqft" />
					</div>
					<div class="form-group col-md-6">
						<label for="inputListPrice">List Price</label>
						<form:input path="listPrice" type="text" class="form-control"
							id="inputListPrice" />
					</div>
				</div>


				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="inputAcreage">Acres</label>
						<form:input path="acreage" type="text" class="form-control"
							id="inputAcreage" />
					</div>
				</div>
				<div class="form-group">
					<label for="inputAddress">Street</label>
					<form:input path="propertyAddress.street" type="text"
						class="form-control" id="inputAddress" placeholder="1234 Main St" />
				</div>
				<div class="form-row">
					<div class="form-group col-md-6">
						<label for="inputCity">City</label>
						<form:input path="propertyAddress.city" type="text"
							class="form-control" id="inputCity" />
					</div>
					<div class="form-group col-md-4">
						<label for="inputState">State</label>
						<form:select path="propertyAddress.state" id="inputState"
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
						<form:input path="propertyAddress.zip" type="text"
							class="form-control" id="inputZip" />
					</div>
				</div>

				<button type="submit" class="btn btn-primary">Register
					Property</button>
			</form:form>

		</main>
	</div>

</body>
</html>