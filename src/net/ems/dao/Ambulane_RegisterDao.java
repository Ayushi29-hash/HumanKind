package net.ems.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import net.ems.model.Register;
import net.ems.utils.JDBCUtils;


public class Ambulane_RegisterDao {
		
	public int registerEmployee(Register employee) throws ClassNotFoundException {
		String INSERT_USERS_SQL = "INSERT INTO users"
				+ "  (first_name, last_name, phone_no, dob, aadhar_no, dl_no, vehicle_no, vehicle_type ) VALUES "
				+ " (?, ?, ?, ?, ?, ?, ?, ?);";

		int result = 0;
		try (Connection connection = JDBCUtils.getConnection();
				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
			preparedStatement.setString(1, employee.getFirstName());
			preparedStatement.setString(2, employee.getLastName());
			preparedStatement.setString(3, employee.getPhoneno());
			preparedStatement.setDate(4, JDBCUtils.getSQLDate(employee.getDob()));
			preparedStatement.setString(5, employee.getAadharno());
			preparedStatement.setString(6, employee.getDlno());
			preparedStatement.setString(7, employee.getVehicleno());
			preparedStatement.setString(8, employee.getVehicletype());
			
			

			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			result = preparedStatement.executeUpdate();

		} catch (SQLException e) {
			// process sql exception
			JDBCUtils.printSQLException(e);
		}
		return result;
	}
	
	public Register registerEmployee(String vtype) throws ClassNotFoundException {
		String SELECT_USER_SQL = "SELECT first_name,phone_no,vehicle_no,vehicle_type FROM demo.users where vehicle_type=? ORDER BY RAND()";
		Register driver = new Register();
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
				driver.setFirstName(fName);
				driver.setPhoneno(pNo);
				driver.setVehicleno(vNo);
				driver.setVehicletype(vType);
			}
		} catch (SQLException e) {
			// process sql exception
			
			JDBCUtils.printSQLException(e);
			
		}
		return driver;
	}
}
