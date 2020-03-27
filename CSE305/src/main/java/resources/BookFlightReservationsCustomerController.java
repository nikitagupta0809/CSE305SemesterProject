package resources;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BookReservationDao;
import model.BookReservation;

/**
 * Servlet implementation class BookFlightReservationsCustomerController
 */
public class BookFlightReservationsCustomerController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookFlightReservationsCustomerController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.sendRedirect("bookFlightReservationsCustomer.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String airlineID = request.getParameter("airlineID");
		String departureAirport = request.getParameter("departureAirport");
		String arrivalAirport = request.getParameter("arrivalAirport");
		String departureDate = request.getParameter("departureDate");
		String returnDate = request.getParameter("returnDate");
		String seatNum = request.getParameter("seatNum");
		String seatClass = request.getParameter("seatClass");
		String mealPref = request.getParameter("mealPref");
		String passEmail = request.getParameter("passEmail");
		Boolean flexibleDate = request.getParameter("flexibleDate")!=null?true:false;
//		String typeOfFlight = request.getParameter("typeOfFlight");
		String typeOfTrip = request.getParameter("typeOfTrip");
		String repSSN = "";
		Boolean isEmployee = false;
		
		if(request.getSession(false).getAttribute("employeeID") != null) {
			isEmployee = true;
			repSSN = (String)request.getSession(false).getAttribute("employeeID");
		}
		
		BookReservation bookRes = new BookReservation();
		bookRes.setAirlineID(airlineID);
		bookRes.setDepartureAirport(departureAirport);
		bookRes.setArrivalAirport(arrivalAirport);
		bookRes.setDepartureDate(departureDate);
		bookRes.setFlexibleDate(flexibleDate);
		bookRes.setMealPref(mealPref);
		bookRes.setPassEmail(passEmail);
		bookRes.setReturnDate(returnDate);
		bookRes.setSeatClass(seatClass);
		bookRes.setSeatNum(seatNum);
//		bookRes.setTypeOfFlight(typeOfFlight);
		bookRes.setTypeOfTrip(typeOfTrip);
		bookRes.setRepSSN(repSSN);
		
		BookReservationDao bookResDao = new BookReservationDao();
		String result = bookResDao.bookOneWayRoundTripReservation(bookRes);
		
		if(result.equals("success")) {
			if(isEmployee == true) {
				response.sendRedirect("customerRepresentativeHome.jsp?status=insertSuccess");
			}
			else {
			response.sendRedirect("home.jsp?status=insertSuccess");
			}
		}
		else {
			if(isEmployee == true) {
				response.sendRedirect("customerRepresentativeHome.jsp?status=insertFailure");
			}
			else {
			response.sendRedirect("home.jsp?status=insertFailure");
			}
		}
		
	}

}
