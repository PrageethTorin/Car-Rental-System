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



@WebServlet("/wd_LginServlet")
public class wd_LginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//JS error
				PrintWriter out = response.getWriter();
				response.setContentType("text/html");
				
				//catch the prompt data from login
				String username = request.getParameter("username");
				String password = request.getParameter("password");
				
				//call loginDBUtill class to validate method and assign return values to the List
				boolean isTrue;
				
				isTrue = w_driverDBUtil.validate(username, password);
				
				if(isTrue == true) {
					List<dwithdraw> wdDetails = w_driverDBUtil.getdwithdraw(username);
					request.setAttribute("wdDetails", wdDetails);
					
					RequestDispatcher dis = request.getRequestDispatcher("withdrawdetails.jsp");
					dis.forward(request, response);
				} else {
					out.println("<script type='text/javascript'>");
					out.println("alert('Your Username or Password is Incorrect');");
					out.println("location='wd_login.jsp'");
					out.println("</script>");
				}
}
}