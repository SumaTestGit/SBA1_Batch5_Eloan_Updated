<%@page import="java.util.List"%>

<%@page import="com.wellsfargo.evaluation.eloan.model.LoanInfo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display All Loans</title>
</head>
<body>

	<h1>All Loan Applications</h1>

	<% List<LoanInfo> loans = (List<LoanInfo>) request.getAttribute("loan"); %>

	<table>
	
	<tr>
			<td>Application Number</td>
		
			<td>Amount Requested</td>
		
			<td>Billing Indicator</td>
	
			<td>Loan Application Date</td>
			
		
			<td>Mobile Number</td>
		
			<td>Loan Application Status</td>
		
			<td>Address</td>
		</tr>
		
		<%for(int i=0; i< loans.size(); i++){
			
		LoanInfo loan = loans.get(i); %>
		
		<tr>
			<td><strong> <%=loan.getApplno()%></strong></td>
		
			<td><strong> <%=loan.getAmtrequest()%></strong></td>
		
			<td><strong> <%=loan.getBindicator()%></strong></td>
		
			<td><strong> <%=loan.getDoa()%>
			</strong></td>
		
			<td></td>
			<td><strong> <%=loan.getMobile()%></strong></td>
		
			<td><strong> <%=loan.getStatus()%></strong></td>
		
			<td><strong> <%=loan.getAddress()%></strong></td>
		</tr>
		<%} %>
	</table>

	<!-- write code to display all the loan details 
             which are received from the admin controllers' listall method
	-->

</body>
</html>