package Customer;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//JS error
				PrintWriter out = response.getWriter();
				response.setContentType("text/html");
				
		// get user prompt to ServLet
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String pnumber = request.getParameter("Phonenumber");
		String username = request.getParameter("username");
		String pwd = request.getParameter("pwd");
		String pwdrept = request.getParameter("pwdrepeat");
		
		//call registerDBUtill class to InsertCustomer method and check return values true or false
		
		boolean isTrue;
		
		isTrue = CustomerDBUtil.insertcustomer(name, email, pnumber, username, pwd, pwdrept);
		
		if(isTrue == true) {
			//If Success redirect login page
	         RequestDispatcher dis1 = request.getRequestDispatcher("login.jsp");
	         dis1.forward(request, response);
			
		} else {
			//If UnSuccess display error message
			out.println("<script type='text/javascript'>");
			out.println("alert('Enter Valid Details');");
			out.println("location='signup.jsp'");
			out.println("</script>");
		}
	}

}
