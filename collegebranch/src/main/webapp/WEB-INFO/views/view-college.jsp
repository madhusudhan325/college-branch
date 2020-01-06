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
			<form action="" method="get">


				<br> <label>Select College :</label> <select name="collegeId"
					id="collegeId" class="btn btn-primary dropdown-toggle"
					data-toggle="dropdown" style="width: 200px" size="1"
					required="required">
					<option value="">Select College</option>
					<c:forEach var="col" items="${ colleges}">
						<option value="${col.collegeId}">${col.collegeName}</option>
					</c:forEach>
				</select>

				<form>
					<button type="submit" class=" btn-primary create-button"
						onclick="action='/getCollegeDetails'">Get Branches</button>
				</form>

			</form>
			<div class="col-md-4"></div>
		</div>
	</div>

	<c:if test="${branches != null }">


		<table class="table table-hover" border="2" width="70%"
			cellpadding="2">
			<tr class="info">
				<th>Branch Name</th>
				<th>Total Strength</th>
				<th>HOD Name</th>
				<th>Total Strength</th>

			</tr>

			<c:forEach var="branch" items="${branches}">
				<tr class="danger">
					<td>${branch.branchName}</td>
					<td>${branch.branchStrength }</td>
					<td>${branch.hodName}</td>

					<form>
						<td><input type="submit" value="Update"
							class=" btn-primary create-button"
							onclick="form.action='/update/${branch.branchId}'" /></td>
					</form>
				</tr>
			</c:forEach>


			<tr>
				<th>Total Strength</th>

				<td>${strength}</td>
				<td></td>
				<td></td>
			</tr>
		</table>
		<form>
			<button type="submit" class=" btn-primary create-button"
				onclick="action='/'">Back</button>
		</form>
	</c:if>


</body>
</html>