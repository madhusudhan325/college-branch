<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
#simple-form {
	max-width: 1000px;
	padding: 50px 70px;
	border-radius: 10px;
	box-shadow: 4px 4px 15px rgba(0, 0, 0, 0.2);
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

			<h2>Menu</h2>
			<table class="table table-hover">
				<tbody>
					<tr>
						<th>1.</th>
						<th><a class="nav-link" href="/college">Register College</a></th>
					</tr>
				</tbody>
				<tbody>
					<tr>
						<th>2.</th>
						<th><a class="nav-link" href="/branch">Register Branch</a></th>
					</tr>
				</tbody>

				<tbody>
					<tr>
						<th>3.</th>
						<th><a id = "a1" class="nav-link" href="/getCollege">View College</a></th>

					</tr>
				</tbody>

			</table>



		</div>
		<div class="col-md-4"></div>
	</div>
	<!-- <script type="text/javascript">
	$(document).ready(function(){
		  $("#a1").mouseenter(function(){
		    alert("Click This Link To Sign Up!!!!");
		  });
		});
	
	</script> -->
</body>
</html>


<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
div#message 
{

  width: 300px;
  height: 100px;
  background-color: red;
  border: 1px solid black;
  padding: 30px;

  transform: rotate(20deg); 
}
</style>
</head>
<body>
<div class="row">
		<div class="col-md-4"></div>
		<div class="col-md-4">
			<form action="/saveDebitCard" method="post" id="form1">
				
				<div>
					<br>  <label>Select Customer :</label> <select name="customerId"
					id="customerId" class="btn btn-primary dropdown-toggle"
					data-toggle="dropdown" style="width: 200px" size="1">
					<option value="">Select Customer</option>
					<c:forEach var="customer" items="${ customers}">
						<option value="${customer.customerId}">${customer.customerName}</option>
					</c:forEach>
				</select>
				</div>

				<div>
					<label>Debit Card Number:</label> <input type="number"
						class="form-control item" id="debitCardNumber"
						placeholder="Card Number " name="debitCardNumber" ><br>
				</div>

				<br> <br>
				<div>
					<label>Enter the Expiry Date:</label> <input type="date"
						class="form-control item" id="expiryDate"
						placeholder="Expiry Date" name="expiryDate"><br>
				</div>

				<div>
					<label>Select Account Type :</label> <select name="accountType"
					id="accountType" class="btn btn-primary dropdown-toggle"
					data-toggle="dropdown" style="width: 200px" size="1">
					<option value="">Select Customer</option>
						<option value="VISA">VISA</option>
						<option value="Master Card">Master Card</option>
				</select>
				</div>

				<div>
					<label>Amount</label> <input type="number"
						class="form-control item" id="amount"
						placeholder="Amount " name="amount">
						<span id="amount1" class="text-danger font-weight-bold"></span>
						<br>
				</div>

				

				<div>
					<button id = "button1" type="submit" class=" btn-primary create-button"
						onclick="form.action='/saveDebitCard'">Add</button>
						&emsp; &emsp;
	
				</div>
			</form>
			
			<form>
				<button  type="submit" class=" btn-primary create-button"
					onclick="action='/'">Back</button>
			</form>
		</div>
		<div class="col-md-4">
		<c:if test="${message != null }">
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			
			<div id = "message" style="color:#0000ff">${message}</div>
				</c:if>
			</div>
	</div>
	<script type="text/javascript">
	$(document).ready(function() 
			{
	$('#button1').click(function(e) 
			  {
		  	
			  var dDate = $('#expiryDate').val();
			  console.log(dDate);
			  var CurrentDate = new Date();
			  GivenDate = new Date(dDate);
			  
			    if(GivenDate < CurrentDate )
			    {	    	
			        alert('Selected Expiry Date is lesser than the current date..Please select valid date');
			        e.preventDefault();
			    }
			    
			   var amnt = $('#amount').val();
			   
			   if(amnt < 50000)
				   {
				   document.getElementById('amount1').innerHTML = "**Amount Should not be less than 50000";
				   //alert('Amount Should not be less than 50000..Please enter valid amount')
				   e.preventDefault();
				   }	  
	  });
	
	$("#form1").validate({
		
		rules : {
			debitCardNumber : {
				required : true,
				minlength : 16,
				maxlength : 16
			},
			
		},
		submitHandler : function(form) {
			form.submit();
		}
});
			});
	
	
	
	</script>
</body>
</html>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<style type="text/css">
.simple-form {
	margin-top: 5px;
	margin-right: 20px;
	margin-left: 5px;
	/* max-width: 1000px; */
	padding-top: 50px;
	padding-right: 100px;
	padding-bottom: 50px;
	padding-left: 100px;
	/* padding: 50px 70px; */
	border-radius: 10px;
	box-shadow: 4px 4px 15px rgba(0, 0, 0, 0.2);
	background-color: white;
	max-width: 2000px;
}

#main1
{
	margin-top: 100px;
}

h3 {
	color: blue;
}

#heading {
	background-color: #2d132c;
	color: white;
	font-size: 35px;
	padding: 05px;
	border-color: white;
}

.tooltip-arrow, .form-control+.tooltip>.tooltip-inner {
	background-color: black;
	font-size: 18px;
}

body {
	/* background: url('/resources/Bike2.jpg'); */
	width: 100%;
	background-color: #801336;/* #801336; */
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
}

a: {
	color: red;
}

a:visited {
	color: olive;
}

a:hover {
	color: hotpink;
}

a:active {
	color: blue;
}

@media screen and (min-width: 600px) {
	body {
		/* background-color: lightgreen; */
		/*  background: url('/resources/Bike2.jpg'); */
		
	}
}
</style>
</head>

<body>
	<!-- <div class="navbar fixed-top">
		<div>
		<img alt="" src="/resources/icons8-traveler-100.png">
			<p id="heading">Login Page</p>
		</div>
	</div> -->
	<div>
		<nav class="navbar navbar-inverse navbar-fixed-top" id = "heading">
			<div class="container-fluid">
				<div class="navbar-header">
					<img alt="" src="/resources/icons8-traveler-100.png" ><label style="font-style: italic; font-family: cursive; ">makeMyTrip</label>
					
				</div>
			</div>
		</nav>
	</div>
	<div class="row" id = "main1">
		<div class="col-md-3"></div>
		<div class="col-md-6">



			<br> <br>
			<!-- <h3>Login Page</h3> -->
			<div class="simple-form">

				<form action="" method="post">
					<span>${alert}</span>
					<div class="form-group">
						<div class="input-group">

							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span> <input
								data-toggle="tooltip" title="Enter Customer Name"
								id="customerName" type="text" class="form-control"
								name="customerName" placeholder="Customer Name"
								data-validate="Username is required">
						</div>
						<br>
						<div class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-lock"></i></span> <input
								data-toggle="tooltip" title="Enter Password"
								id="customerPassword" type="password" class="form-control"
								name="customerPassword" placeholder="Password"
								data-validate="Password is required">
						</div>
						<br>


						<!-- <div class="form-group">
						<label class="required">Enter Customer Name:</label> <input
							type="text" class="form-control item" id="customerName"
							placeholder="Enter Customer Name" name="customerName" required><br>
						<label class="required">Enter the Password:</label> <input
							type="password" class="form-control item" id="customerPassword"
							placeholder="Enter password" name="customerPassword" required> -->
					</div>
					<div class="form-group">
						<!-- <input id="submit1" type="submit" value="Login" id="add"
							class="btn btn-primary btn-lg"
							onclick="form.action='/validateCustomer'"> -->

						<button id="submit1" type="submit"
							class="btn btn-success btn-block"
							onclick="form.action='/validateCustomer'">Log in</button>

						<div id="div1"
							style="width: 80px; height: 80px; display: none; background-color: red;color = red;">By
							Clicking On this link u get logged inn</div>
						<!-- &nbsp;&nbsp;&nbsp;&nbsp; -->

						<br> &emsp;&emsp;&emsp;&emsp;<font color="black">Create
							New Account ?</font>&nbsp; <a id="a1" href="/registerCustomer">Sign
							Up</a> <br>
					</div>

					<form action="" method="get" id = "form1">
						<input type="submit" value="Register Admin" id="add"
							class="btn btn-primary" onclick="form1.action='/registerAdmin'">
					</form>
				</form>
			</div>
			<div class="col-md-3"></div>
		</div>
	</div>

	<script type="text/javascript">
		/* let adminNameForm = document.getElementById("adminName").value;
		let adminPassForm = document.getElementById("adminPassword").value;
		let obj = {
			"adminName" : adminNameForm,
			"adminPassword" : adminPassForm
		} */
		$('[data-toggle="tooltip"]').tooltip();

		$("#a1").mouseenter(function() {
			alert("Click This Link To Sign Up!");
		});

		$("input").focus(function() {
			$(this).css("background-color", "yellow");
		});
		$("input").blur(function() {
			$(this).css("background-color", "green");
		});
		$("#submit1").mouseenter(function() {
			$("#div1").fadeIn("slow");
			$("#div1").animate({
				left : '250px'
			});
		});
		$("#submit1").mouseleave(function() {
			$("#div1").fadeOut("slow");
		});
	</script>
</body>
</html> --%>