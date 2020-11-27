package net.ems.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
//import java.sql.ResultSet;
import java.sql.SQLException;

import net.ems.model.Avail;
import net.ems.utils.JDBCUtils;
//import net.ems.model.Register;

//public class Ambulance_AvailDao {
//	public int registeravail(Avail employee) throws ClassNotFoundException {
////		String INSERT_USERS_SQL = "INSERT INTO avail"
////				+ "  ( name, phone_no, pick_up, drop, vehicle_type) VALUES "
////				+ " (?, ?, ?, ?, ?);";
//		String INSERT_USERS_SQL = "INSERT INTO avail"
//				+ "  (name, phone_no, pick_up, drop_loc, vehicle_type ) VALUES "
//				+ " (?, ?, ?, ?, ?);";
//
//		int result = 0;
//		try (Connection connection = JDBCUtils.getConnection();
//				// Step 2:Create a statement using connection object
//				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
//			preparedStatement.setString(1, employee.getName());
//			preparedStatement.setString(2, employee.getPhoneno());
//			preparedStatement.setString(3, employee.getPickup());
//			preparedStatement.setString(4, employee.getDrop());
//			preparedStatement.setString(5, employee.getVehicle_type());
//			
//			
//
//			System.out.println(preparedStatement);
//			// Step 3: Execute the query or update query
//			result = preparedStatement.executeUpdate();
//
//		} catch (SQLException e) {
//			// process sql exception
//			JDBCUtils.printSQLException(e);
//		}
//		return result;
//	}
//}
public class Ambulance_AvailDao {
	public int registerAvail(Avail employee) throws ClassNotFoundException {
		String INSERT_USERS_SQL = "INSERT INTO avail"
				+ "  (name, phone_no, pick_up, drop_loc, vehicle_type ) VALUES "
				+ " (?, ?, ?, ?, ?);";

		int result = 0;
		try (Connection connection = JDBCUtils.getConnection();
				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
			preparedStatement.setString(1, employee.getName());
			preparedStatement.setString(2, employee.getPhoneno());
			preparedStatement.setString(3, employee.getPickup());
			preparedStatement.setString(4, employee.getDrop());
			preparedStatement.setString(5, employee.getVehicle_type());
			
			

			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			result = preparedStatement.executeUpdate();

		} catch (SQLException e) {
			// process sql exception
			JDBCUtils.printSQLException(e);
		}
		return result;
	}
//	public Register registerAvailDetail(Avail employee) throws ClassNotFoundException {
//        Register book = null;
//        String sql = "SELECT * FROM book WHERE vehicle_type = ?";
//       // int result1 = 0;
//        //connect();
//        try (Connection connection = JDBCUtils.getConnection();
//				// Step 2:Create a statement using connection object
//				PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
//			preparedStatement.setString(1, employee.getVehicle_type());
//         
//        
////         ResultSet resultSet = preparedStatement.executeQuery();
////         
////        if (resultSet.next()) {
////            String title = resultSet.getString("firstName");
////            String author = resultSet.getString("phoneno");
////            String price = resultSet.getString("vehicleno");
////             
////            book = new Register( title, author, price);
////        }
////         
////        resultSet.close();
////        preparedStatement.close();
////         
////        return book;
////    }
//        System.out.println(preparedStatement);
//		// Step 3: Execute the query or update query
//        ResultSet resultSet = preparedStatement.executeQuery();
//        if (resultSet.next()) {
//          String title = resultSet.getString("firstName");
//          String author = resultSet.getString("phoneno");
//          String price = resultSet.getString("vehicleno");
//           
//          book = new Register();
//          book.setFirstName(title);
//          book.setPhoneno(author);
//          book.setVehicleno(price);
//      }
//       
//
//	} catch (SQLException e) {
//		// process sql exception
//		JDBCUtils.printSQLException(e);
//	}
//	return book;
//	
//}
}

