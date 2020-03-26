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
	This is the Search Movies page
	This page displays fields to search an movie by type or by name 
	The movie type details are fetched from "movies" request attribute
-->

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width:device-width, initial-scale=1">
		<link href="webjars/bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet" />
	</head>
	<body>
	
		<h1>Book Reservations:</h1>
		<div class="container">
			<h2>Booking:</h2>
			<div class="row">
				<div class="col">
					<div class="card">
					  <div class="card-body">
					    <h5 class="card-title">One-way/round-trip booking</h5>
    					<div class="container">
						<form method="POST" action="bookFlightReservationsCustomer">
								<label for="airlineID">Airline ID:</label>
	    						<input type="text" class="form-control" id="airlineID" name="airlineID" placeholder="Type Airline ID, example AA">
	    						<label for="departureAirport">Departure Airport</label>
	    						<input type="text" class="form-control" id="departureAirport" name="departureAirport" placeholder="Type Departure Airport, example JFK">
	    		    			<label for="arrivalAirport">Arrival Airport</label>
	    						<input type="text" class="form-control" id="arrivalAirport" name="arrivalAirport" placeholder="Type Arrival Airport, example SFO">
	    		    			<label for="departureDate">Departing On</label>
	    						<input type="text" class="form-control" id="departureDate" name="departureDate" placeholder="Type Departure Date MM/DD/YYYY">
		    		    		<label for="returnDate">Returning On</label>
	    						<input type="text" class="form-control" id="returnDate" name="returnDate" placeholder="Type Returning Date MM/DD/YYYY">
		    		    		<label for="seatNum">Seat Number</label>
	    						<input type="text" class="form-control" id="seatNum" name="seatNum" placeholder="Type Seat Number, example 10B">
		    		    		<label for="seatClass">Class</label>
	    						<input type="text" class="form-control" id="seatClass" name="seatClass" placeholder="Type Seat Class, example First">
		    		    		<label for="mealPref">Meal</label>
	    						<input type="text" class="form-control" id="mealPref" name="mealPref" placeholder="Type Meal Preference, example Steak">
			    		    	<label for="passEmail">Passenger Email</label>
	    						<input type="text" class="form-control" id="passEmail" name="passEmail" placeholder="Type Passenger Email">
			    		    	<label for="flexibleDate">Flexible Date/Time</label>
	    						<input type="checkbox" class="form-control" id="flexibleDate" name="flexibleDate"><br>
	 	    					<label for="typeOfTrip">Type of Trip</label> <br>
	    						One-way<input type="radio" class="form-control" value="oneway" id="typeOfTrip" name="typeOfTrip" checked><br>
	 	    					Round-trip<input type="radio" class="form-control" value="roundtrip" id="typeOfTrip" name="typeOfTrip">
	        	     		     	     										
	    						<br>
								<input type="submit" value="Book" class="btn btn-primary"/>
							</form>
						</div>
					  </div>
					</div>
				</div>
				<div class="col">
					<div class="card">
					  <div class="card-body">
					    <h5 class="card-title">Multi-city booking</h5>
    					<div class="container">
							<form method="POST" action="bookFlightReservationsMultiCityCustomer">
								<label for="airlineID">Airline ID:</label>
	    						<input type="text" class="form-control" id="airlineID" name="airlineID" placeholder="Type Airline ID, example AA">
	    						<label for="departureAirport1">Departure Airport 1</label>
	    						<input type="text" class="form-control" id="departureAirport1" name="departureAirport1" placeholder="Type Departure Airport 1, example JFK">
	    		    			<label for="arrivalAirport1">Arrival Airport 1</label>
	    						<input type="text" class="form-control" id="arrivalAirport1" name="arrivalAirport1" placeholder="Type Arrival Airport 1, example SFO">
	    		    			<label for="trip1Date">Trip 1 Date</label>
	    						<input type="text" class="form-control" id="trip1Date" name="trip1Date" placeholder="Type Trip Date 1 MM/DD/YYYY">
	    						<label for="departureAirport2">Departure Airport 2</label>
	    						<input type="text" class="form-control" id="departureAirport2" name="departureAirport2" placeholder="Type Departure Airport 2, example JFK">
	    		    			<label for="arrivalAirport2">Arrival Airport 2</label>
	    						<input type="text" class="form-control" id="arrivalAirport2" name="arrivalAirport2" placeholder="Type Arrival Airport 2, example SFO">
	    		    			<label for="trip2Date">Trip 2 Date</label>
	    						<input type="text" class="form-control" id="trip2Date" name="trip2Date" placeholder="Type Trip Date 2 MM/DD/YYYY">
		    		    		<label for="seatNum">Seat Number</label>
	    						<input type="text" class="form-control" id="seatNum" name="seatNum" placeholder="Type Seat Number, example 10B">
		    		    		<label for="seatClass">Class</label>
	    						<input type="text" class="form-control" id="seatClass" name="seatClass" placeholder="Type Seat Class, example First">
		    		    		<label for="mealPref">Meal</label>
	    						<input type="text" class="form-control" id="mealPref" name="mealPref" placeholder="Type Meal Preference, example Steak">
			    		    	<label for="passEmail">Passenger Email</label>
	    						<input type="text" class="form-control" id="passEmail" name="passEmail" placeholder="Type Passenger Email">
			    		    	<label for="flexibleDate">Flexible Date/Time</label>
	    						<input type="checkbox" class="form-control" id="flexibleDate" name="flexibleDate"><br>
								<br>
								<input type="submit" value="Book" class="btn btn-primary"/>
							</form>
						</div>
					  </div>
					</div>
				</div>
				
			</div>				
		</div>
		<div class="container pt-1">
			<form action="home.jsp">
				<input type="submit" value="Home" class="btn btn-success"/>
			</form>
		</div>
		
		<script src="webjars/jquery/3.3.1/jquery.min.js"></script>
		<script src="webjars/bootstrap/4.1.3/bootstrap.min.js"></script>
	</body>
</html>