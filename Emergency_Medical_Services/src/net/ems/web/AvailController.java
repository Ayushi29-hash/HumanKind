package net.ems.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import net.ems.dao.Ambulance_AvailDao;

import net.ems.model.Avail;




@WebServlet("/avail")

public class AvailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Ambulance_AvailDao userDao;

	public void init() {
		userDao = new Ambulance_AvailDao();
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
		String Name = request.getParameter("Name");
		String phoneno = request.getParameter("phoneno");
		String pickup = request.getParameter("pickup");
		String drop = request.getParameter("drop");
		String vehicle_type = request.getParameter("vehicle_type");
		

		Avail employee = new Avail();
		employee.setName(Name);
		employee.setPhoneno(phoneno);
		employee.setPickup(pickup);
		employee.setDrop(drop);
		employee.setVehicle_type(vehicle_type);
		
		

		try {
			int result = userDao.registerAvail(employee);
			if(result == 1) {
				request.setAttribute("NOTIFICATION", "We will provide your ambulance details shortly!");
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher("avail/avail.jsp");
		dispatcher.forward(request, response);
	}
}