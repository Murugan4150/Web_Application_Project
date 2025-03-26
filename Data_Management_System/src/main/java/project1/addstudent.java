package project1;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import project1.DbConnection;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

/**
 * Servlet implementation class addser
 */
public class addstudent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addstudent() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter pw=response.getWriter();
		boolean ans=false;
		String name=request.getParameter("name");
		String Sex=request.getParameter("sex");
		String age=request.getParameter("age");
		int age1=Integer.parseInt(age);
		String dob=request.getParameter("dob");
		String mb=request.getParameter("mb");
		long mobile=Long.parseLong(mb);
		
		
		int a = (int) (Math.random() * 10000); // Generates a random number between 0 and 99
		String regid="MJ"+a;
		
		System.out.println(regid+" "+name+" "+Sex+" "+age1+" "+dob+" "+mobile);
			createone tv=new createone();
			
				try {
					ans=tv.addid(regid,name,Sex,age1,dob,mobile);
				} catch (ClassNotFoundException | SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				if(ans) {
					response.sendRedirect("index.jsp");
				}else {
					pw.println("Employee data update  Failed!");
				}
				
				
			
	}

	
	
	
}
