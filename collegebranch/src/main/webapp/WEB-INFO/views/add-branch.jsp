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
<style type="text/css">
#form1 {
	margin-top: 5px;
	/* margin-right: 20px;
	margin-left: 5px; */
	/* max-width: 1000px; */
	padding-top: 50px;
	padding-right: 15px;
	padding-bottom: 50px;
	padding-left: 15px;
	/* padding: 50px 70px; */
	border-radius: 10px;
	box-shadow: 4px 4px 15px rgba(0, 0, 0, 0.2);
	background-color: white;
	max-width: 2000px;
}

body {
	background-color: black;
}
</style>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="row">
		<div class="col-md-3"></div>
		<div class="col-md-6">

			<form action="" method="post" id="form1">

				
					<c:if test="${message != null }">
						<br>

						<div id="message" style="color: red">${message}</div>
					</c:if>
				<div>
					<br> <label>Select College :</label> <select name="collegeId"
						id="collegeId" class="btn btn-primary dropdown-toggle"
						data-toggle="dropdown" style="width: 200px" size="1"
						required="required">
						<option value="">Select College</option>
						<c:forEach var="col" items="${ colleges}">
							<option value="${col.collegeId}">${col.collegeName}</option>
						</c:forEach>
					</select>
				</div>

				<div>
					<label>Branch Name:</label> <input type="text"
						class="form-control item" id="branchName"
						placeholder="Card Number " name="branchName" required="required"><br>
				</div>

				<br> <br>

				<div>
					<label>Branch Total Strength</label> <input type="number"
						class="form-control item" id="branchStrength"
						placeholder="Total Strength" name="branchStrength"> <span
						id="amount1" class="text-danger font-weight-bold"></span> <br>
				</div>

				<div>
					<label>HOD Name:</label> <input type="text"
						class="form-control item" id="hodName" placeholder="HOD Name "
						name="hodName" required="required"><br>
				</div>

				<div>
					<button id="button1" type="submit"
						class=" btn-primary create-button"
						onclick="form.action='/saveBranch'">Add Branch</button>
					&emsp; &emsp;

				</div>
			</form>

			<form>
				<button type="submit" class=" btn-primary create-button"
					onclick="action='/'">Back</button>
			</form>
		</div>
		<div class="col-md-3"></div>

	</div>
	<script type="text/javascript">
		/* 	$(document).ready(
							function() {
								$('#button1')
										.click(
												function(e) {

													var dDate = $('#expiryDate')
															.val();
													console.log(dDate);
													var CurrentDate = new Date();
													GivenDate = new Date(dDate);

													if (GivenDate < CurrentDate) {
														alert('Selected Expiry Date is lesser than the current date..Please select valid date');
														e.preventDefault();
													}

													var amnt = $('#amount').val();

													if (amnt < 50000) {
														document
																.getElementById('amount1').innerHTML = "**Amount Should not be less than 50000";
														//alert('Amount Should not be less than 50000..Please enter valid amount')
														e.preventDefault();
													}
												});
		 */
		$("#form1").validate({

			rules : {
				collegeName : {
					required : true,
					minlength : 3,
					maxlength : 20
				},

			},
			submitHandler : function(form) {
				form.submit();
			}
		});
		/* }); */
	</script>

</body>
</html>