<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Loan Application Form</title>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
</head>
<body onload="myFunction()">
	
	<h1>Loan Application Form</h1>
	
	<input type="hidden" id="userName" name="userName"
		value="<%= request.getAttribute("userName") %>">

	<form action="user?action=placeloan">  
	
		<div>
			<div>
				<label for="loanName"> Loan Name (Description):</label>
			</div>
			<div>
				<input type="text" id="loanName" required />
			</div>
		</div>
		
		<div>
			<div>
				<label for="loanAmountRequested"> Loan Amount Requested: </label>
			</div>
			<div>
				<input type="number" id="loanAmountRequested" required />
			</div>
		</div>	

		<div>
			<div>
				<label for="loanApplicationDate"> Loan Application Date: </label>
			</div>
			<div>
				<input type="date" id="loanApplicationDate" required />
			</div>
		</div>				
		
		<div>
			<div>
				<label for="businessStruture"> Business Structure: </label>
			</div>
			<div>
				<input type="text" id="businessStruture" required />
			</div>		
		</div>
		
		<div>
			<div>
				<label for="billingIndicator"> Billing Indicator: </label>
			</div>
			<div>
				<input type="text" id="billingIndicator" required />
			</div>
		</div>
		
		<div>
			<div>
				<label for="taxIndicator"> Tax Indicator: </label>
			</div>
			<div>
				<input type="radio" id="taxIndicator" required />
				<label for="radio" id="taxIndicator"> Tax Payer </label>
			
				<input type="radio" id="taxIndicator" required />
				<label for="radio" id="taxIndicator"> Non Tax Payer </label>
			</div>
			
		</div>

		<div>
			<div>
				<label for="email"> Email:</label>
			</div>
			<div>
				<input type="email" id="email" required />
			</div>
		</div>

		<div>
			<div>
				<label for="mobile"> Mobile Number:</label>
			</div>
			<div>
				<input type="number" id="mobile" required />
			</div>
		</div>

		<div>
			<div>
				<label for="houseNo"> House Number:</label>
			</div>
			<div>
				<input type="text" id="houseNo" required />
			</div>
		</div>

		<div>
			<div>
				<label for="city"> City:</label>
			</div>
			<div>
				<input type="text" id="city" required />
			</div>
		</div>

		<div>
			<div>
				<label for="state"> State:</label>
			</div>
			<div>
				<input type="text" id="state" required />
			</div>
		</div>

		<div>
			<div>
				<label for="country"> Country:</label>
			</div>
			<div>
				<input type="text" id="country" required />
			</div>
		</div>

		<div>
			<div>
				<label for="zipcode"> Zip Code:</label>
			</div>
			<div>
				<input type="number" id="zipcode" required />
			</div>
		</div>			
		
		<!-- <div>
				<input type="radio" id="businessStruture" name="businessStruture" value="Individual" required />
				<label for="Individual">Individual</label>
				
				<input type="radio" id="businessStruture" name="businessStruture" value="Organisation" required />
				<label for="Individual">Organisation</label>
			</div> -->
				
		<div>
		
			<button>Submit</button> 
			
			<button>Cancel</button>

		</div>

	</form>

	<!--
	write the html code to accept laon info from user and send to place loan servlet
-->



</body>
</html>