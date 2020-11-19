package net.javaguides.todoapp.web;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.javaguides.todoapp.dao.UserDao;
import net.javaguides.todoapp.model.User;


@WebServlet("/register")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDao userDao;

	public void init() {
		userDao = new UserDao();
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
		//LocalDate dob = request.getParameter("dob");
		LocalDate dob = LocalDate.parse(request.getParameter("dob"));
		String aadharno = request.getParameter("aadharno");
		String dlno = request.getParameter("dlno");
		String vehicleno = request.getParameter("vehicleno");
		String vehicletype = request.getParameter("vehicletype");
		

		User employee = new User();
		employee.setFirstName(firstName);
		employee.setLastName(lastName);
		employee.setPhoneno(phoneno);
		employee.setDob(dob);
		employee.setAadharno(aadharno);
		employee.setDlno(dlno);
		employee.setVehicleno(vehicleno);
		employee.setVehicletype(vehicletype);

		try {
			int result = userDao.registerEmployee(employee);
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
