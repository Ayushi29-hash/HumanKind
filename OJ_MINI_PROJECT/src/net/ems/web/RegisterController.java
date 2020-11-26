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
		String firstName = request.getParameter("first_name");
		String lastName = request.getParameter("last_name");
		String phoneno = request.getParameter("phone_no");
		LocalDate dob = LocalDate.parse(request.getParameter("dob"));
		String aadharno = request.getParameter("aadhar_no");
		String dlno = request.getParameter("dl_no");
		String vehicleno = request.getParameter("vehicle_no");
		String vehicletype = request.getParameter("vehicle_type");
		

		Register driver = new Register();
		driver.setFirstName(firstName);
		driver.setLastName(lastName);
		driver.setPhoneno(phoneno);
		driver.setDob(dob);
		driver.setAadharno(aadharno);
		driver.setDlno(dlno);
		driver.setVehicleno(vehicleno);
		driver.setVehicletype(vehicletype);
		
		
		

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
