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


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//JS error
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		//catch the prompt data from login
		String email = request.getParameter("email");
		String password = request.getParameter("pwd");
		
		//call loginDBUtill class to validate method and assign return values to the List
		boolean isTrue;
		
		isTrue = CustomerDBUtil.validate(email, password);
		
		if(isTrue == true) {
			List<customer> cusDetails = CustomerDBUtil.getCustomer(email);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		} else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Your Username or Password is Incorrect');");
			out.println("location='login.jsp'");
			out.println("</script>");
		}
	}

}
