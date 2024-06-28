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

/**
 * Servlet implementation class deletewithdrawservlet
 */
@WebServlet("/deletewithdrawservlet")
public class deletewithdrawservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//JS error
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
	
		//create variable to store details
		String id = request.getParameter("id");
		
		boolean isTrue;
		
		isTrue = w_driverDBUtil.deletewithdraw(id);
		
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("wd_signup.jsp");
			dispatcher.forward(request, response);
			out.println("<script type='text/javascript'>");
			out.println("alert('Account Delete Sucessfully');");
			out.println("location='wd_signup.jsp'");
			out.println("</script>");
		} else {
			
			List<dwithdraw> wdDetails = w_driverDBUtil.getwdDetails(id);
			request.setAttribute("wdDetails", wdDetails);
			//If UnSuccess redirect another page
			RequestDispatcher dispatcher = request.getRequestDispatcher("withdrawdetails.jsp");
			dispatcher.forward(request, response);
		}
	}

}
