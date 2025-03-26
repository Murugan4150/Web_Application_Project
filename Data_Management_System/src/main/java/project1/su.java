package project1;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Servlet implementation class su
 */
public class su extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public su() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		String id = request.getParameter("id");
	    String status = request.getParameter("status");
	    String date = request.getParameter("date");
	    PrintWriter p=response.getWriter();
	    try {
	    	 try (Connection conn = DbConnection.getConnection();
	    	         PreparedStatement stmt = conn.prepareStatement("UPDATE atendance SET `" + date + "` = ? WHERE Logid = ?")) {

	    	        stmt.setString(1, status);
	    	        stmt.setString(2, id);
                
                int rowsAffected = stmt.executeUpdate();  

                if (rowsAffected > 0) {
                	
                    p.print("Updated successfully");
                    
                } 

            } catch (SQLException e) {
                e.printStackTrace();
            }catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			}
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }
    }
}
