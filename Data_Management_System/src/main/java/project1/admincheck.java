package project1;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.ProcessBuilder.Redirect;

/**
 * Servlet implementation class admincheck
 */
public class admincheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public admincheck() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String name=request.getParameter("aname");
		String id=request.getParameter("aid");
		String pass=request.getParameter("apass");
		System.out.println(name+" "+id+" "+pass);
		if(name.equals("Pagarbook") &&id.equals("MJ1112") && pass.equals("pb1112") ) {
			response.sendRedirect("createstaff.jsp");
			
		}else {
			
			response.sendRedirect("sampleone.jsp");
			
		}
		
		
		
	}

}
