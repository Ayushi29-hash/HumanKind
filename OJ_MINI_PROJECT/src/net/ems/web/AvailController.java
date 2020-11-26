//package net.ems.web;
//
//public class AvailController {
//
//}
package net.ems.web;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.ems.dao.Ambulance_AvailDao;
import net.ems.model.Avail;

import net.ems.dao.Ambulance_RegisterDao;
import net.ems.model.Register;


@WebServlet("/avail")
public class AvailController extends HttpServlet  {
	private static final long serialVersionUID = 1L;
	private Ambulance_AvailDao userDao;
	private Ambulance_RegisterDao driverDao;
	public void init() {
		userDao = new Ambulance_AvailDao();
		driverDao= new Ambulance_RegisterDao();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		avail(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.sendRedirect("avail/avail.jsp");
		
	}

	private void avail(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String name = request.getParameter("name");
		String phoneno = request.getParameter("phone_no");
		String pickup = request.getParameter("pick_up");
		String drop = request.getParameter("drop");
		String vehicletype = request.getParameter("vehicle_type");
		

		Avail book = new Avail();
		book.setName(name);
		book.setPhoneno(phoneno);
		book.setPickup(pickup);
		book.setDrop(drop);
		book.setVehicletype(vehicletype);
		
		Register driver = new Register();

		try {
			int result = userDao.registerBook(book);
			
			if(result == 1) {
				driver=driverDao.registerDriver(vehicletype);
				if (driver.getFirstName() == null)
				{
					request.setAttribute("NOTIFICATION","NotFound");
				}
				else {
					
				
				//int result = userDao.
				request.setAttribute("NOTIFICATION", "The details of the Ambulance are:");
				request.setAttribute("NAME",driver.getFirstName());
				request.setAttribute("PHONE",driver.getPhoneno());
				request.setAttribute("VNUM",driver.getVehicleno());
				request.setAttribute("VTYPE",driver.getVehicletype());
				}
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("avail/avail.jsp");
		dispatcher.forward(request, response);
	}
}