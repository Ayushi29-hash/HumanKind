package net.ems.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import net.ems.model.Donor;
import net.ems.utils.JDBCUtils;

public class Blood_DonorDao {
	public int registerDonor(Donor employee) throws ClassNotFoundException {
		String INSERT_USERS_SQL = "INSERT INTO donor"
				+ "  (first_name, last_name, gender, age, dob, blood_grp, phone_no, state, city , aids, cancer, pierce) VALUES "
				+ " (?, ?, ?, ?, ?, ?, ?, ?, ? , ? , ? , ?);";

		int result = 0;
		try (Connection connection = JDBCUtils.getConnection();
				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
			preparedStatement.setString(1, employee.getFirstName());
			preparedStatement.setString(2, employee.getLastName());
			preparedStatement.setString(3, employee.getGender());
			preparedStatement.setString(4, employee.getAge());
			preparedStatement.setDate(5, JDBCUtils.getSQLDate(employee.getDob()));
			preparedStatement.setString(6, employee.getBloodgrp());
			preparedStatement.setString(7, employee.getPhoneno());
			preparedStatement.setString(8, employee.getState());
			preparedStatement.setString(9, employee.getCity());
			preparedStatement.setString(10, employee.getAids());
			preparedStatement.setString(11, employee.getCancer());
			preparedStatement.setString(12, employee.getPierce());
			
			
			

			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			result = preparedStatement.executeUpdate();

		} catch (SQLException e) {
			// process sql exception
			JDBCUtils.printSQLException(e);
		}
		return result;
	}

}
