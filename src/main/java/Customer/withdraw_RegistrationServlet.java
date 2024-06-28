package Customer;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class withdraw_RegistrationServlet
 */

@WebServlet("/withdraw_RegistrationServlet")
public class withdraw_RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//JS error
				PrintWriter out = response.getWriter();
				response.setContentType("text/html");
				
		// get user prompt to ServLet
		String name = request.getParameter("name");
		String bank = request.getParameter("bank");
		String accountnumber = request.getParameter("accountnumber");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		
		//call registerDBUtill class to InsertCustomer method and check return values true or false
		
		boolean isTrue;
		
		isTrue = w_driverDBUtil.insertwithdraw(name, bank, accountnumber, username, password);
		
		if(isTrue == true) {
			//If Success redirect withdraw login page
	         RequestDispatcher dis1 = request.getRequestDispatcher("wd_login.jsp");
	         dis1.forward(request, response);
			
		} else {
			//If UnSuccess display error message
			out.println("<script type='text/javascript'>");
			out.println("alert('Enter Valid Details');");
			out.println("location='wd_signup.jsp'");
			out.println("</script>");
		}
	}
}
