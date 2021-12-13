package util;

import java.sql.Connection;
import java.sql.DriverManager;


public class DBConn {
	public static Connection getConnection() {
		Connection connection = null;
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@human.lepelaka.net:1521:xe","USER8","USER8");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return connection;
	}
	
	public static void main(String[] args) {
		System.out.println(getConnection());
	}
}
