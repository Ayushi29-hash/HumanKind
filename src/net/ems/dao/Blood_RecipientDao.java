//package net.ems.dao;
//
//public class Blood_RecipientDao {
//
//}

package net.ems.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
//import java.sql.ResultSet;
import java.sql.SQLException;

//import net.ems.model.Donor;
import net.ems.model.Recipient;
import net.ems.utils.JDBCUtils;

public class Blood_RecipientDao {
	public int registerRecipient(Recipient cust) throws ClassNotFoundException {
		String INSERT_USERS_SQL = "INSERT INTO patient"
				+ "  (first_name, last_name, gender, age, dob, blood_grp, phone_no, state, city) VALUES "
				+ " (?, ?, ?, ?, ?, ?, ?, ?, ?);";

		int result = 0;
		try (Connection connection = JDBCUtils.getConnection();
				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
			preparedStatement.setString(1, cust.getFirstName());
			preparedStatement.setString(2, cust.getLastName());
			preparedStatement.setString(3, cust.getGender());
			preparedStatement.setString(4, cust.getAge());
			preparedStatement.setDate(5, JDBCUtils.getSQLDate(cust.getDob()));
			preparedStatement.setString(6, cust.getBloodgrp());
			preparedStatement.setString(7, cust.getPhoneno());
			preparedStatement.setString(8, cust.getState());
			preparedStatement.setString(9, cust.getCity());
			
			
			

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