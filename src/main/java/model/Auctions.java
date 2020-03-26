package model;

public class Auctions {
	private int AccountNo; 
	private String AirlineID; 
	private String FlightNo; 
	private String SeatClass; 
	private String Date; 
	private double NYOP; 
	private Boolean Accepted;
	public int getAccountNo() {
		return AccountNo;
	}
	public void setAccountNo(int accountNo) {
		AccountNo = accountNo;
	}
	public String getAirlineID() {
		return AirlineID;
	}
	public void setAirlineID(String airlineID) {
		AirlineID = airlineID;
	}
	public String getFlightNo() {
		return FlightNo;
	}
	public void setFlightNo(String flightNo) {
		FlightNo = flightNo;
	}
	public String getSeatClass() {
		return SeatClass;
	}
	public void setSeatClass(String seatClass) {
		SeatClass = seatClass;
	}
	public String getDate() {
		return Date;
	}
	public void setDate(String date) {
		Date = date;
	}
	public double getNYOP() {
		return NYOP;
	}
	public void setNYOP(double nYOP) {
		NYOP = nYOP;
	}
	public Boolean isAccepted() {
		return Accepted;
	}
	public void setAccepted(Boolean accepted) {
		Accepted = accepted;
	}
}
