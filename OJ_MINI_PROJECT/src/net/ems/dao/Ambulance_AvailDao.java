//package net.ems.dao;
//
//public class Ambulance_AvailDao {
//
//}
package net.ems.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import net.ems.model.Avail;
import net.ems.utils.JDBCUtils;

public class Ambulance_AvailDao {
	public int registerBook(Avail book) throws ClassNotFoundException {
		String INSERT_BOOK_SQL = "INSERT INTO book"
				+ "  (name, phone_no, pick_up, drop, vehicle_type) VALUES "
				+ " (?, ?, ?, ?, ?);";
		int result = 0;
		try (Connection connection = JDBCUtils.getConnection();
				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_BOOK_SQL)) {
			preparedStatement.setString(1, book.getName());
			preparedStatement.setString(2, book.getPhoneno());
			preparedStatement.setString(3, book.getPickup());
			preparedStatement.setString(4, book.getDrop());
			preparedStatement.setString(5, book.getVehicletype());
			
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