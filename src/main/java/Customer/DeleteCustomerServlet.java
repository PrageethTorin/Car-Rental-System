package Customer;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteCustomerServlet")
public class DeleteCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//JS error
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
	
		//create variable to store details
		String id = request.getParameter("cusid");
		
		boolean isTrue;
		
		isTrue = CustomerDBUtil.deletecustomer(id);
		
		if(isTrue == true) {
			RequestDispatcher dis1 = request.getRequestDispatcher("signup.jsp");
			dis1.forward(request, response);
			out.println("<script type='text/javascript'>");
			out.println("alert('Account Delete Sucessfully');");
			out.println("location='signup.jsp'");
			out.println("</script>");
		} else {
			
			List<customer> cusDetails = CustomerDBUtil.getCustomerDetails(id);
			request.setAttribute("cusDetails", cusDetails);
			//If UnSuccess redirect another page
			RequestDispatcher dis2 = request.getRequestDispatcher("useraccount.jsp");
			dis2.forward(request, response);
		}
	}

}
