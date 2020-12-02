package net.ems.web;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import net.ems.dao.Blood_DonorDao;
import net.ems.dao.Blood_RecipientDao;
import net.ems.model.Recipient;
import net.ems.model.Donor;




@WebServlet("/recipient")

public class RecipientController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Blood_RecipientDao userDao;
    private Blood_DonorDao driverDao;
	public void init() {
		userDao = new Blood_RecipientDao();
		driverDao= new Blood_DonorDao();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		recipient(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.sendRedirect("recipient/recipient.jsp");
		
	}

	private void recipient(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

		
		
		String firstName = request.getParameter("firstName");
		String lastName = request.getParameter("lastName");
		String gender = request.getParameter("gender");
		String age = request.getParameter("age");
		LocalDate dob = LocalDate.parse(request.getParameter("dob"));
		String bloodgrp = request.getParameter("bloodgrp");
		String phoneno = request.getParameter("phoneno");
		String state = request.getParameter("state");
		String city = request.getParameter("city");
		
		Recipient PAT = new Recipient();
		PAT.setFirstName(firstName);
		PAT.setLastName(lastName);
		PAT.setGender(gender);
		PAT.setAge(age);
		PAT.setDob(dob);
		PAT.setBloodgrp(bloodgrp);
		PAT.setPhoneno(phoneno);
		PAT.setState(state);
		PAT.setCity(city);

		Donor patient= new Donor();

		try {
			int result = userDao.registerRecipient(PAT);
			
			if(result == 1) {
				patient=driverDao.registerDonor(bloodgrp);
				if (patient.getFirstName() == null)
				{
					request.setAttribute("NOTIFICATION","NotFound");
				}
				else {
					
				
				//int result = userDao.
				request.setAttribute("NOTIFICATION", "We will provide your ambulance details shortly!");
				//Register driver = new Register();
				//System.out.println("hello" +driver.getFirstName());
				request.setAttribute("NOTIFICATION",patient.getFirstName());
				request.setAttribute("PHONE",patient.getBloodgrp());
				request.setAttribute("VNUM",patient.getPhoneno());
				request.setAttribute("VTYPE",patient.getCity());
				}
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher("recipient/recipient.jsp");
		dispatcher.forward(request, response);
	}
	
}