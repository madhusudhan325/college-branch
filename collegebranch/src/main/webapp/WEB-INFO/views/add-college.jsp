<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/additional-methods.min.js"
	integrity="sha256-vb+6VObiUIaoRuSusdLRWtXs/ewuz62LgVXg2f1ZXGo="
	crossorigin="anonymous"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
#simple-form {
	margin-top: 5px;
	/* margin-right: 20px;
	margin-left: 5px; */
	/* max-width: 1000px; */
	padding-top: 50px;
	padding-right: 100px;
	padding-bottom: 50px;
	padding-left: 100px;
	/* padding: 50px 70px; */
	border-radius: 10px;
	box-shadow: 4px 4px 15px rgba(0, 0, 0, 0.2);
	background-color: white;
	/* max-width: 2000px; */
}
body
{
	background-color: black;
}
</style>
</head>
<body>
	<br>
	<br>
	<br>
	<br>
	<div class="row">
		<div class="col-md-4"></div>
		<div class="col-md-4" id="simple-form">
			<h3>College registration form</h3>
			<br>
			<form action="" method="post" id="form1">

				<div class="col-md-4">
					<c:if test="${message != null }">
						<br>


						<div id="message" style="color: #0000ff">${message}</div>
					</c:if>
				</div>


				<div>
					<label>College Name:</label> <input type="text"
						class="form-control item" id="collegeName"
						placeholder="College Name" name="collegeName" required="required"><br>
				</div>


				<div>
					<label>College Location:</label>
					<textarea rows="3" cols="30" id="location" name="location"
						required="required"></textarea>
				</div>
				<br>


				<div>
					<label>Branch Count</label> <input type="number"
						class="form-control item" id="numberOfBranches"
						placeholder="Branch Count" name="numberOfBranches"> <span
						id="amount1" class="text-danger font-weight-bold"></span> <br>
				</div>



				<div>
					<button id="button1" type="submit"
						class=" btn-primary create-button"
						onclick="form.action='/saveCollege'">Add College</button>
					&emsp; &emsp;

				</div>
			</form>

			<form>
				<button type="submit" class=" btn-primary create-button"
					onclick="action='/'">Back</button>
			</form>
		</div>
		<div class="col-md-4"></div>
	</div>
	<script type="text/javascript">
		/* $conv = jQuery;
		$conv.validator.addMethod("alphabetsnspace", function(value, element) {
			return this.optional(element) || /^[a-zA-Z ]*$/.test(value);
		}); */
		$("#form1").validate({

			rules : {
				collegeName : {
					required : true,
					minlength : 3,
					lettersonly : true,
					maxlength : 20
				}

			},


			submitHandler : function(form) {
				form.submit();
			}
		});
	</script>
</body>
</html>