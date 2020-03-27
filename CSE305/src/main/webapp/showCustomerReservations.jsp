<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page isELIgnored="false" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<!--
	This is the Item Details page
	This page displays the data for each item
	The details are fetched using the "items" field from the request object
-->

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" content="width:device-width, initial-scale=1">
	<link href="webjars/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" />
	<title>Reservation Details</title>
</head>
<body>

	<h1>The Flight Reservations are:</h1>
	<div class="container">
	<c:if test="${empty reservations}">
		<h3> Flight Reservations not found! <h3/> 
	</c:if>
	<c:if test="${not empty reservations}">
		<table class="table table-striped">
		  <thead>
		    <tr>
		      <th>Reservation No</th>
		      <th>Reservation Date</th>
		      <th>Total Fare</th>
		      <th>Booking Fee</th>
		      <th>Customer Representative SSN</th>
		      <th>Account No</th>
		       <th></th>
			   <th></th>
		    </tr>
		  </thead>
		  <tbody>
		     <c:forEach items="${reservations}" var="cd">
		       <tr>
		         <td>${cd.getResrNo()}</td>
		         <td>${cd.getResrDate()}</td>		         
		         <td>${cd.getTotalFare()}</td>
		         <td>${cd.getBookingFee()}</td>
		         <td>${cd.getRepSSN()}</td>		         
		         <td>${cd.getAccountNo()}</td>
		          <td>
		         	<form method="POST" action="getItineraryForReservation">
						<div class="form-group">
			            	<input type="hidden" class="form-control" name="resrNo" value=${cd.getResrNo()}>
			        	</div>
						<input type="submit" value="Itinerary" class="btn btn-success"/>
					</form>
		         </td>		         
		         <td>
		         	<form method="POST" action="cancelReservation">
						<div class="form-group">
			            	<input type="hidden" class="form-control" name="resrNo" value=${cd.getResrNo()}>
			        	</div>
						<input type="submit" value="Cancel" class="btn btn-success"/>
					</form>
		         </td>	
		       </tr>
		     </c:forEach>
		  </tbody>
		</table>
	</c:if>
	</div>
	<div class="container pt-1">
		<form action="home.jsp">
			<input type="submit" value="Home" class="btn btn-success"/>
		</form>
	</div>

	
	<script src="webjars/jquery/3.3.1-1/jquery.min.js"></script>
	<script src="webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	
</body>
</html>