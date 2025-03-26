<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ page import="java.sql.*, project1.DbConnection" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style >
body {
    background-image: url('bgimg.jpg'); 
    background-size: 2750px;
  
    background-repeat: no-repeat;
    background-position: center;
}


</style>
</head>
<body>
<%
String id = request.getParameter("id");
String status = request.getParameter("status");
String date = request.getParameter("date");

try {
	 try (Connection conn = DbConnection.getConnection();
	         PreparedStatement stmt = conn.prepareStatement("UPDATE atendance SET `" + date + "` = ? WHERE Logid = ?")) {

	        stmt.setString(1, status);
	        stmt.setString(2, id);
        
        int rowsAffected = stmt.executeUpdate();  

        if (rowsAffected > 0) {
        
           %>
           <h1>updated successfully completed</h1>
           
           <%
            
        } 

    } catch (SQLException e) {
        e.printStackTrace();
    }catch (ClassNotFoundException e1) {
		e1.printStackTrace();
	}
} catch (NumberFormatException e) {
    e.printStackTrace();
}

%>
</body>
</html>