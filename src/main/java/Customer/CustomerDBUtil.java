package Customer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustomerDBUtil {
	//create variables for the connection, statement and resultSet
			private static boolean isSuccess;
			private static Connection con =null;
			private static Statement stmt =null;
			private static ResultSet rs =null;
			
	public static boolean validate(String email, String password) {
			//validate (Any email or password in the database)
			try {
				
				//create connection
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				//query
				String sql = "select*from customer where email='"+email+"' and password='"+password+"'";
				
				//run query
				rs = stmt.executeQuery(sql);
				
				if(rs.next()) {
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
	
	
		public static List<customer> getCustomer(String email) {
		
		//create ArrayList to return details in the list
		ArrayList<customer> cus = new ArrayList<>();
		
		//validate (Any email or password in the database)
		try {
			
			//create connection
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			//query
			String sql = "select * from customer where email='"+email+"'";
			
			//run query
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				int id = rs.getInt(1);
				String uname = rs.getString(2);
				String uemail = rs.getString(3);
				String uphone = rs.getString(4);
				String userU = rs.getString(5);
				String upass = rs.getString(6);
				
				customer c = new customer(id,uname,uemail,uphone,userU,upass); //pass details to the customer class
				cus.add(c); //customer object pass details to the array list object
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return cus;
	}
	

		public static boolean insertcustomer(String name, String email, String phone, String username, String password, String repeatPsw) {

				boolean isSuccess = false;

					//add details to the database
				try {
							Class.forName("com.mysql.jdbc.Driver");
	
							//create connection
							con = DBConnect.getConnection();
							stmt = con.createStatement();
	
							//query
							String sql = "insert into customer values (0,'"+name+"','"+email+"','"+phone+"','"+username+"','"+password+"')";
	
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


		public static boolean updatecustomer(String id, String name, String email, String phone, String username, String password) {

			boolean isSuccess = false;

			//update details to the database
			try {
				//create connection
				con = DBConnect.getConnection();
				stmt = con.createStatement();
	
				//query
				String sql = "update customer set name='"+name+"', email='"+email+"',phone='"+phone+"',username='"+username+"',password='"+password+"'"
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
		
		public static List<customer> getCustomerDetails(String id) {
			
			int convertedID = Integer.parseInt(id);
			//create ArrayList to return details in the list
			ArrayList<customer> cus = new ArrayList<>();
			
			try {
				
				//create connection
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				//query
				String sql = "select*from customer where id='"+convertedID+"'";
				
				//run query
				rs = stmt.executeQuery(sql);
				
				while(rs.next()) {
					int ide = rs.getInt(1);
					String uname = rs.getString(2);
					String uemail = rs.getString(3);
					String uphone = rs.getString(4);
					String userU = rs.getString(5);
					String upass = rs.getString(6);
					
					customer c = new customer(ide,uname,uemail,uphone,userU,upass); //pass details to the customer class
					cus.add(c); //customer object pass details to the array list object
				}
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			
			return cus;
		}


		public static boolean deletecustomer(String id) {

			int convId = Integer.parseInt(id);
			boolean isSuccess = false;
			
			//delete details to the database
			try {
				//create connection
				con = DBConnect.getConnection();
				stmt = con.createStatement();
	
				//query
				String sql = "delete from customer where id='"+convId+"'";
	
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
