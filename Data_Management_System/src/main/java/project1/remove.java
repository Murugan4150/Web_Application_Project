package project1;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import project1.DbConnection;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class remove extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String Id = request.getParameter("id");
	        try {
	        	int id=Integer.parseInt(Id);
	            try (Connection conn = DbConnection.getConnection();
	                 PreparedStatement stmt = conn.prepareStatement("DELETE FROM t1 WHERE Reg_Id = ?")) {
	                
	                stmt.setInt(1, id);
	                int rowsAffected = stmt.executeUpdate();  

	                if (rowsAffected > 0) {
	                    response.sendRedirect("index.jsp");
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
