package net.ems.web;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.ems.dao.Ambulance_RegisterDao;
import net.ems.model.Register;

@WebServlet("/register")
public class RegisterController extends HttpServlet  {
	private static final long serialVersionUID = 1L;
	private Ambulance_RegisterDao userDao;

	public void init() {
		userDao = new Ambulance_RegisterDao();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		register(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.sendRedirect("register/register.jsp");
		
	}

	private void register(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String phoneno = request.getParameter("phoneno");
		LocalDate dob = LocalDate.parse(request.getParameter("dob"));
		String aadharno = request.getParameter("aadharno");
		String dlno = request.getParameter("dlno");
		String vehicleno = request.getParameter("vehicleno");
		String vehicletype = request.getParameter("vehicletype");
		

		Register driver = new Register();
		driver.setFirstName(firstName);
		driver.setLastName(lastName);
		driver.getPhoneno();
		driver.getDob();
		driver.getAadharno();
		driver.getDlno();
		driver.getVehicleno();
		driver.getVehicletype();
		
		

		try {
			int result = userDao.registerDriver(driver);
			if(result == 1) {
				request.setAttribute("NOTIFICATION", "User Registered Successfully!");
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher("register/register.jsp");
		dispatcher.forward(request, response);
	}
}
