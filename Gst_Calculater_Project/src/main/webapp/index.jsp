<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Multiple Programs in One JSP Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        text-align: center;
        margin: 50px;
    }
    .container {
        background: white;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        display: inline-block;
        margin: 20px;
    }
    .container1 {
    width:30%;
        background: white;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
      position:relative;
      left:520px;
        margin: 20px;
    }
    h2 {
        color: #333;
    }
    label {
        display: block;
        margin: 10px 0 5px;
    }
    input, select, button {
        padding: 8px;
        margin: 5px;
        border-radius: 5px;
        border: 1px solid #ccc;
    }
    button {
        background-color: #28a745;
        color: white;
        cursor: pointer;
    }
    button:hover {
        background-color: #218838;
    }
    .result {
        font-weight: bold;
        color: #d9534f;
    }
    @keyframes fadeIn {
            0% { opacity: 0; transform: translateY(20px); }
            100% { opacity: 1; transform: translateY(0); }
        }

        .name {
            font-size: 20px;
            font-weight: bold;
            text-align: center;
            animation: fadeIn 2s ease-in-out;
        }
</style>
</head>
<body>

<div class="container">
    <h2>GST Calculation</h2>
    <form method="post">
        <label>Enter the Original Price:</label>
        <input type="number" name="Price" required>
        
        <label>Enter GST Rate:</label>
        <select name="Rate">
            <option>5</option>
            <option>12</option>
            <option>18</option>
            <option>28</option>
        </select>

        <button type="submit" name="action" value="gst">Calculate GST</button>
    </form>
</div>



<%
    
        String original_price = request.getParameter("Price");
        String rate = request.getParameter("Rate");

        if (original_price != null && rate != null) {
            double originalPrice = Double.parseDouble(original_price);
            double gstRate = Double.parseDouble(rate);
            double gstAmount = (originalPrice * gstRate) / 100;
            double totalPrice = originalPrice + gstAmount;
%>
    <div class="container1">
        <h2>GST Calculation Result</h2>
        <p>Original Price: ₹ <span class="result"><%= String.format("%.2f", originalPrice) %></span></p>
        <p>GST Rate: <span class="result"><%= gstRate %>%</span></p>
        <p>GST Amount: ₹ <span class="result"><%= String.format("%.2f", gstAmount) %></span></p>
        <p>Total Price after GST: ₹ <span class="result"><%= String.format("%.2f", totalPrice) %></span></p>
    </div>
    <p class="name">Developed by Murugan, Java Developer</p>
<%
        }
    
%>

</body>
</html>
