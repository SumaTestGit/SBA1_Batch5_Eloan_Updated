<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Track Loan Application</title>
</head>
<body>

	<!-- write html code to read the application number and send to usercontrollers'
             displaystatus method for displaying the information
	-->

	<jsp:include page="header.jsp" />

	<hr />

	<div align=center>

		<h2>Track Loan Application</h2>

		<form action="user?action=displaystatus" method="post">

			<div>

				<div>
					<label for="applicationnumber">Application Number:</label>
				</div>

				<div>
					<input type="text" id="applicationnumber" name="applicationnumber">
				</div>

			</div>

			<div>
				<div>
					<input type="submit" value="Track Application">
				</div>
			</div>

		</form>			

	</div>

	<hr />	

</body>
</html>