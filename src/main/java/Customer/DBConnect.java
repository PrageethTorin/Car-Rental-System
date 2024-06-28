package Customer;
import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	private static String url = "jdbc:mysql://localhost:3306/hotel";
	private static String Username = "root";
	private static String password = "2001Torin@#";
	
	private static Connection con;
	
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url,Username,password);
		}
		catch(Exception e) {
			System.out.println("Database connection error...!!!");
		}
		return con;
	}
}
