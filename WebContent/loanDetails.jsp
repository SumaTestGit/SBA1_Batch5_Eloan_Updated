<%@page import="com.wellsfargo.evaluation.eloan.model.LoanInfo"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Loan Application Status</title>
</head>
<body>


	<!-- write the code to display the loan status information 
	     received from usercontrollers' displaystatus method
	-->
	
	<jsp:include page="header.jsp" />
	
	<hr />
	
	<div align=center>

		<h2>Loan Application Status</h2>
		
		<% LoanInfo loan = (LoanInfo) request.getAttribute("loan"); %>

		<form method="post">

			<div>

				<table> 
				
					<tr><td> Application Number </td> <td><strong> <%= loan.getApplno() %> </strong></td> <tr>
					<tr><td> Application Status </td> <td><strong> <%= loan.getStatus() %> </strong></td> <tr>
									
				</table>
				
			</div>

		</form>		

	</div>

	<hr />
	
	<jsp:include page="footer.jsp" />

</body>
</html>