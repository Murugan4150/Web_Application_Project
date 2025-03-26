<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*, project1.DbConnection" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Process</title>
    <link rel="icon" type="image/png" href="logo.avif" >
</head>
<body>
    <%
        String studentid = request.getParameter("id");
        String name = request.getParameter("name");
        String sex=request.getParameter("sex");
        String age = request.getParameter("age");
		String dob = request.getParameter("dob");
        String mb = request.getParameter("mb");
        
        int  id=Integer.parseInt(studentid);
        int ageInt = Integer.parseInt(age);
        long salaryInt = Long.parseLong(mb);
        
        String updateQuery = "UPDATE t1 SET Student_Name = ?, Sex = ?, Student_Age = ? ,Date_Of_Birth =?,Mobile_Number=? WHERE Reg_Id = ?";
        
        try (Connection conn = DbConnection.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(updateQuery)) {
             
            pstmt.setString(1, name);
            pstmt.setString(2, sex);
            pstmt.setInt(3,  ageInt);
            pstmt.setString(4,dob);
            pstmt.setLong(5, salaryInt);
            pstmt.setInt(6, id);
            
            int rowsAffected = pstmt.executeUpdate();
            if (rowsAffected > 0) {
               response.sendRedirect("index.jsp");
            } else {
                out.println("<h3>Failed to update employee data.</h3>");
            }
        } catch (SQLException e) {
            e.printStackTrace();
            out.println("<h3>Error: " + e.getMessage() + "</h3>");
        }
    %>
    
    <br>
    <a href="index.jsp">Back to Student List</a>
</body>
</html>
