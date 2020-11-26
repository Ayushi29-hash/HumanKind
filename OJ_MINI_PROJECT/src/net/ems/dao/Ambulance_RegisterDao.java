package net.ems.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import net.ems.model.Register;
import net.ems.utils.JDBCUtils;

public class Ambulance_RegisterDao {
	public int registerDriver(Register driver) throws ClassNotFoundException {
		String INSERT_USERS_SQL = "INSERT INTO ojmini.driver"
				+ "  (first_name, last_name, phone_no, dob, aadhar_no, dl_no, vehicle_no, vehicle_type ) VALUES "
				+ " (?, ?, ?, ?, ?, ?, ?, ?);";
		int result = 0;
		try (Connection connection = JDBCUtils.getConnection();
				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
			preparedStatement.setString(1, driver.getFirstName());
			preparedStatement.setString(2, driver.getLastName());
			preparedStatement.setString(3, driver.getPhoneno());
			preparedStatement.setDate(4, JDBCUtils.getSQLDate(driver.getDob()));
			preparedStatement.setString(5, driver.getAadharno());
			preparedStatement.setString(6, driver.getDlno());
			preparedStatement.setString(7, driver.getVehicleno());
			preparedStatement.setString(8, driver.getVehicletype());
			
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			result = preparedStatement.executeUpdate();

		} catch (SQLException e) {
			// process sql exception
			JDBCUtils.printSQLException(e);
		}
		return result;
	}
	
	public Register registerDriver(String vtype) throws ClassNotFoundException {
		String SELECT_USER_SQL = "SELECT first_name,phone_no,vehicle_no,vehicle_type FROM ojmini.driver where vehicle_type=?";
		Register driver1 = new Register();
		try (Connection connection = JDBCUtils.getConnection();
				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_SQL)) {
			preparedStatement.setString(1, vtype);
			ResultSet resultop = preparedStatement.executeQuery();
			while (resultop.next()) {	
				
			    String fName=resultop.getString("first_name");
			    String pNo=resultop.getString("phone_no");
				String vNo=resultop.getString("vehicle_no");
				String vType=resultop.getString("vehicle_type");
				
				driver1.setFirstName(fName);
				driver1.setPhoneno(pNo);
				driver1.setVehicleno(vNo);
				driver1.setVehicletype(vType);
			}
		} catch (SQLException e) {
			// process sql exception
			
			JDBCUtils.printSQLException(e);
			
		}
		return driver1;
	}


}
