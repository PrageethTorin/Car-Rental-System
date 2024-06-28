package Customer;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class updatewithdrawServlet
 */
@WebServlet("/updatewithdrawServlet")
public class updatewithdrawServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		//create variable to store details
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String bank = request.getParameter("bank");
		String accountnumber = request.getParameter("accountnumber");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		boolean isTrue;
	
		
	    isTrue = w_driverDBUtil.updatewithdraw(id, name, bank, accountnumber, username, password);
		
		if(isTrue == true) {
			
			List<dwithdraw> wdDetails = w_driverDBUtil.getwdDetails(id);
			request.setAttribute("wdDetails", wdDetails);
			
			//If Success redirect another page
			RequestDispatcher dis1 = request.getRequestDispatcher("withdrawdetails.jsp");
			dis1.forward(request, response);
		} else {
			
			List<dwithdraw> wdDetails = w_driverDBUtil.getwdDetails(id);
			request.setAttribute("wdDetails", wdDetails);
			
			//If UnSuccess redirect another page
			RequestDispatcher dis1 = request.getRequestDispatcher("wd_login.jsp");
			dis1.forward(request, response);
		}
	}
}


