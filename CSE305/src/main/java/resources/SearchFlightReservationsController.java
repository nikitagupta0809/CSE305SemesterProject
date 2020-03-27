package resources;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.FlightReservationsDao;
import model.FlightReservations;

/**
 * Servlet implementation class SearchFlightReservationsController
 */
public class SearchFlightReservationsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchFlightReservationsController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher rd = request.getRequestDispatcher("searchFlightReservations.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flightNum = "";
		String customerName = "";
		FlightReservationsDao resDao = new FlightReservationsDao();
        if (request.getParameterMap().containsKey("flightNum")) {
            flightNum = request.getParameter("flightNum");   
        }
        // Check if password parameter exists
        else if (request.getParameterMap().containsKey("customerName")) {
            customerName = request.getParameter("customerName");
        }
        
        List<FlightReservations> reservations = resDao.getReservations(flightNum, customerName);
        
		request.setAttribute("reservations", reservations);
		
		RequestDispatcher rd = request.getRequestDispatcher("showFlightReservations.jsp");
		rd.forward(request, response);
	}

}