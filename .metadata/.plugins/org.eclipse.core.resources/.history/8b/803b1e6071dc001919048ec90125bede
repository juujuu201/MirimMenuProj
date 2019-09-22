package menu.db.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	public static Connection getCon() throws SQLException{
		Connection conn=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/jspMenu";
			String user="root";
			String pass="1234";
			
			conn=DriverManager.getConnection(url, user, pass);
			return conn;
		}
		catch(ClassNotFoundException e) {
			e.printStackTrace();
			return null;
		}
	}
}
