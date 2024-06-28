package Customer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class w_driverDBUtil{

	private static boolean isSuccess;
	private static Connection con =null;
	private static Statement stmt =null;
	private static ResultSet rs =null;
	
public static boolean validate(String username, String password) {
 
	try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		String sql = "select * from withdraw where username='"+username+"' and password='"+password+"'";
		rs = stmt.executeQuery(sql);
		
		if (rs.next()) {
			isSuccess = true;
		} else {
			isSuccess = false;
		}
		
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	return isSuccess;
}
	 
public static List<dwithdraw> getdwithdraw(String userName) {
		
		//create ArrayList to return details in the list
		ArrayList<dwithdraw> dus = new ArrayList<>();
		
		//validate (Any username or password in the database)
		try {
			
			//create connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			//query
			String sql = "select * from withdraw where username='"+userName+"'";
			
			//run query
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String name = rs.getString(2);
				String bank = rs.getString(3);
				String accountnumber = rs.getString(4);
				String username = rs.getString(5);
				String password = rs.getString(6);
				
				dwithdraw d = new dwithdraw(id,name,bank,accountnumber,username,password); //pass details to the customer class
				dus.add(d); //customer object pass details to the array list object
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return dus;
	}

public static boolean insertwithdraw(String name, String bank, String accountnumber, String username, String password) {

	boolean isSuccess = false;

		//add details to the database
	try {
				Class.forName("com.mysql.jdbc.Driver");

				//create connection
				con = DBConnect.getConnection();
				stmt = con.createStatement();

				//query
				String sql = "insert into withdraw values (0,'"+name+"','"+bank+"','"+accountnumber+"','"+username+"','"+password+"')";

				//run query
				int rs = stmt.executeUpdate(sql);

				//check the update are success or not
				if(rs>0) {
					isSuccess = true;
				} else {
					isSuccess = false;
				}
		}
		catch(Exception e) {
			e.printStackTrace();
		}

		return isSuccess;
}


public static boolean updatewithdraw(String id, String name, String bank, String accountnumber, String username, String password) {

	boolean isSuccess = false;

	//update details to the database
	try {
		//create connection
		con = DBConnect.getConnection();
		stmt = con.createStatement();

		//query
		String sql = "update withdraw set name='"+name+"', bank='"+bank+"',accountnumber='"+accountnumber+"',username='"+username+"',password='"+password+"'"
				+ "where id='"+id+"'";

		//run query
		int rs = stmt.executeUpdate(sql);

		//check the update are success or not
		if(rs>0) {
			isSuccess = true;
		} else {
			isSuccess = false;
		}
	}
	catch(Exception e) {
		e.printStackTrace();
	}

	return isSuccess;	
}

public static List<dwithdraw> getwdDetails(String id) {
	
	int convertedID = Integer.parseInt(id);
	//create ArrayList to return details in the list
	ArrayList<dwithdraw> dus = new ArrayList<>();
	
	try {
		
		//create connection
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		
		//query
		String sql = "select*from withdraw where id='"+convertedID+"'";
		
		//run query
		rs = stmt.executeQuery(sql);
		
		while(rs.next()) {
			int id1 = rs.getInt(1);
			String wname = rs.getString(2);
			String wbank = rs.getString(3);
			String waccountbank = rs.getString(4);
			String wusername = rs.getString(5);
			String wpassword = rs.getString(6);
			
			dwithdraw d = new dwithdraw(id1,wname,wbank,waccountbank,wusername,wpassword); //pass details to the dwithdraw class
			dus.add(d); //dwithdraw object pass details to the array list object
		}
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	
	return dus;
}


public static boolean deletewithdraw(String id) {

	int convId = Integer.parseInt(id);
	boolean isSuccess = false;
	
	//delete details to the database
	try {
		//create connection
		con = DBConnect.getConnection();
		stmt = con.createStatement();

		//query
		String sql = "delete from withdraw where id='"+convId+"'";

		//run query
		int rs = stmt.executeUpdate(sql);

		//check the update are success or not
		if(rs>0) {
			isSuccess = true;
		} else {
			isSuccess = false;
		}
	}
	catch(Exception e) {
		e.printStackTrace();
	}

	return isSuccess;	
}


	
}


