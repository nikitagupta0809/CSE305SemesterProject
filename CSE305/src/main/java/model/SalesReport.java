package model;

public class SalesReport {
	private int ResrNo; 
	private String ResrDate;
	private double TotalFare;
	private double BookingFee;
	private int RepSSN;
	private String FirstName;
	private String LastName;
	public int getResrNo() {
		return ResrNo;
	}
	public void setResrNo(int resrNo) {
		ResrNo = resrNo;
	}
	public String getResrDate() {
		return ResrDate;
	}
	public void setResrDate(String resrDate) {
		ResrDate = resrDate;
	}
	public double getTotalFare() {
		return TotalFare;
	}
	public void setTotalFare(double totalFare) {
		TotalFare = totalFare;
	}
	public double getBookingFee() {
		return BookingFee;
	}
	public void setBookingFee(double bookingFee) {
		BookingFee = bookingFee;
	}
	public int getRepSSN() {
		return RepSSN;
	}
	public void setRepSSN(int repSSN) {
		RepSSN = repSSN;
	}
	public String getFirstName() {
		return FirstName;
	}
	public void setFirstName(String firstName) {
		FirstName = firstName;
	}
	public String getLastName() {
		return LastName;
	}
	public void setLastName(String lastName) {
		LastName = lastName;
	}

}
