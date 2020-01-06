<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<div class="row">
		<div class="col-md-4"></div>
		<div class="col-md-4">

			<form method="post">
				<div class="col-md-4">
					<c:if test="${message != null }">
						<br>
						<div id="message" style="color: #0000ff">${message}</div>
					</c:if>
				</div>
				<div>
				
				<label>Previous Strength :</label> <input
						type="number" class="form-control item" id="branchStrength"
						placeholder="Total Strength" name="branchStrength" value="${branch.branchStrength }" disabled="disabled">

					<label>Enter the Branch Total Strength to be updated</label> <input
						type="number" class="form-control item" id="branchStrength"
						placeholder="Total Strength" name="branchStrength"> <span
						id="amount1" class="text-danger font-weight-bold"></span> <br>
				</div>
				<button id="button1" type="submit"
					class=" btn-primary create-button"
					onclick="form.action='/updateBranch'">Update</button>

				
			</form>
			
			<form>
					<button type="submit" class=" btn-primary create-button"
						onclick="action='/'">Back</button>
				</form>
		</div>
		<div class="col-md-4"></div>
	</div>
</body>
</html>