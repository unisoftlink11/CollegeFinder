package collegefinder.dbcon;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DB {
private static Connection con = null;
	
	public static Connection getConnection() {
		if(con != null) {
			return con;
		}
		else {
			try {
				String driver = "com.mysql.jdbc.Driver";
				String url="jdbc:mysql://localhost:3306/collegefinder";
				String user="root";
				String pass="";
				Class.forName(driver);
				con=DriverManager.getConnection(url,user,pass);
				
				
			}catch(ClassNotFoundException e) {
				System.out.println(e);
			}catch(SQLException sqe) {
				System.out.println(sqe);
			}
			return con;
		}
		
	}
	

}
