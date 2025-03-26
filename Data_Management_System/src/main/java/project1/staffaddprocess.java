package project1;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

/**
 * Servlet implementation class staffaddprocess
 */
public class staffaddprocess extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public staffaddprocess() {
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
		PrintWriter pw=response.getWriter();
		boolean ans=false;
		String name=request.getParameter("name");
		String mb=request.getParameter("mb");
		long mobile=Long.parseLong(mb);
		String dn=request.getParameter("dn");
		String pass=request.getParameter("pass");
		
		
		int a = (int) (Math.random() * 10000); // Generates a random number between 0 and 99
		String Logid="MJ"+a;
		
		System.out.println(Logid+" "+name+" "+mobile+" "+dn+" "+pass);
			createstaff tv=new createstaff();
			
				try {
					ans=tv.addid(Logid,name,mobile,dn,pass);
				} catch (ClassNotFoundException | SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				System.out.println(ans);
				if(ans==true) {
					response.sendRedirect("createstaff.jsp");
				}else {
					pw.println("Staff data added  Failed!");
				}
				
				
	}	
	}

	
	