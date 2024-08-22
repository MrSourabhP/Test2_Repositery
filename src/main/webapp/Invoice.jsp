<%@page import="com.Entity.product"%>
<%@page import="com.Entity.purchase"%>
<%@page import="java.util.List"%>
<%@page import="com.connection.connection"%>
<%@page import="com.Module.pro_module"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="Header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Invoice</title>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <!-- Custom styles -->
  <style>
    /* Adjust styles as needed */
    .invoice-container {
      max-width: 800px;
      margin: 50px auto;
      background: #fff;
      padding: 20px;
      border: 1px solid #ddd;
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }
    .invoice-header {
      border-bottom: 1px solid #ddd;
      padding-bottom: 10px;
      margin-bottom: 20px;
    }
    .invoice-header h2 {
      margin-top: 0;
    }
    .invoice-details {
      margin-bottom: 20px;
    }
    .table th, .table td {
      vertical-align: middle;
    }
  </style>
</head>
<body>
<main id="main" class="main">
<div class="container">
  <div class="invoice-container">
    <div class="invoice-header">
    <h3 style="color: navy; text-align: center;">Purchase Bill</</h3>
      <h2 style="color: orange;">Invoice</h2>
    </div>
    
    <div class="invoice-details">
      <div class="row">
        <div class="col-sm-6">
       
        </div>
        <div>
            <h4 align="center">Rice Purchase Bill</h4>
        </div>
      </div>
    </div>
    
             <%
                try{
                	int id=Integer.parseInt(request.getParameter("id"));
                	pro_module p=new pro_module(connection.getConnection());
                	List<purchase> n=p.invoice1(id);
                	for(purchase m:n){
              %>
    
    <div class="table-responsive">
      <table class="table table-bordered">
        <thead>
          <tr>
            <th>ID</th>
            <th>Product Name</th>
            <th>HSN No</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Total</th>
          </tr>
        </thead>
         <tbody>
        <tr>
            <td><%=m.getId() %></td>
            <td><%=m.getName() %></td>
            <td><%=m.getHsn_no() %></td>
            <td><%=m.getPrice()%></td>
            <td><%=m.getQuantity() %></td>
            <td><%=m.getTotal() %></td>
           
        </tr> 
        </tbody>
      </table>
      
      <%
           }
           
       }
         catch(Exception e){
        	 e.printStackTrace();
         }
      %>
    </div>
    
    <div class="text-right">
      <button type="submit" class="btn btn-outline-primary" onclick="printInvoice()">Print</button>
    </div>
    
    <script>
       function printInvoice(){
    	   window.print();
       }
    </script>
  </div>
</div>
</main>

<!-- Bootstrap JS and dependencies (optional) -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<%@include file="Footer.jsp" %>
</body>
</html>
