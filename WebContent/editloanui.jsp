<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Loan Application</title>
</head>
<body>
	<jsp:include page="header.jsp" />

	<input type="hidden" id="applicationnumber" name="applicationnumber"
		value="<%=request.getAttribute("applno")%>">
		
	<h1>Edit Loan Application</h1>

	<!-- include application.jsp so that user can edit the information  -->
	<jsp:include page="application.jsp" />

	<div align="right">
		<a href="index.jsp">Logout</a>
	</div>
	<div align="right">
		<a href="adminhome1.jsp">Admin Home</a>
	</div>

	<jsp:include page="footer.jsp" />
	
</body>
</html>