package Customer;

public class dwithdraw {
	
	private int id;
	private String name;
	private String bank;
	private String accountnumber;
	private String username;
	private String password;
	
	
	public dwithdraw(int id, String name, String bank, String accountnumber, String username, String password) {
		
		this.id = id;
		this.name = name;
		this.bank = bank;
		this.accountnumber = accountnumber;
		this.username = username;
		this.password = password;
	}


	public int getId() {
		return id;
	}





	public String getName() {
		return name;
	}




	public String getBank() {
		return bank;
	}




	public String getAccountnumber() {
		return accountnumber;
	}




	public String getUsername() {
		return username;
	}




	public String getPassword() {
		return password;
	}



}
