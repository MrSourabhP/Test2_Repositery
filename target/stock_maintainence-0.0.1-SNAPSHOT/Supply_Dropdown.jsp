<%@page import="com.Entity.purchase"%>
<%@page import="com.Entity.provider"%>
<%@page import="java.util.List"%>
<%@page import="com.connection.connection"%>
<%@page import="com.Module.pro_module"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="Header.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Forms / Layouts - NiceAdmin Bootstrap Template</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: NiceAdmin
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Updated: Apr 20 2024 with Bootstrap v5.3.3
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <main id="main" class="main">

    <div class="pagetitle">
      <h3 style="color: lime;">Supplier List</h3>
      
    </div><!-- End Page Title -->
    <section class="section">
      <div class="row">
        <div class="col-lg-6">
        
          <div class="card">
            <div class="card-body">
              <h5 class="card-title" align="center" style="color: silver;">Suppliers</h5>

              <!-- Multi Columns Form -->
              <form class="row g-3" action="dropinsertservelet" method="post">
              
                <label for="validationDefault01" class="form-label">Supplier Name:</label>
                 <select class="form-select" name="nm" id="floatingSelect" style="margin: 8px; padding: 4px;">
                 <option value="0">Select</option>
                 
                 <%
                   try{
                	   pro_module p=new pro_module(connection.getConnection());
                	   List<provider> c=p.fetchsuppno();
                	   for(provider b:c){
                 %>
                 
                 <option value="<%=b.getName()%>"><%=b.getName() %></option>
                 
                 <%
                	   }
                	   
                   }
                    catch(Exception e){
                    	e.printStackTrace();
                    }
                 %>
                 
                </select>
                
                <label for="validationDefault01" class="form-label">Product Name:</label>
                 <select class="form-select" name="name" id="floatingSelect1" style="margin: 8px; padding: 4px;">
                 <option value="0">Select</option>
                 
                 <%
                    try{
                    	pro_module p=new pro_module(connection.getConnection());
                    	List<purchase> h=p.fetchproduct();
                    	//out.print(h);
                    	for(purchase q:h){
                 %>
                 
                 <option value="<%=q.getName() %>"><%=q.getName() %></option>
                 
                 <%
                    	}
                    }
                     catch(Exception e){
                    	 e.printStackTrace();
                     }
                 %>
          
                 </select>
                
                <div class="col-md-6">
                  <label for="inputPhone" class="form-label">Phone_No</label>
                  <input type="number" name="mob" class="form-control" id="mob">
                </div>
                
                <div class="col-md-6">
                  <label for="inputText" class="form-label">Price</label>
                  <input type="text" name="prc1" class="form-control" id="price">
                </div>
                
               
                <div class="text-center">
                  <button type="submit" class="btn btn-primary">Submit</button>
                  <button type="reset" class="btn btn-secondary">Reset</button>
                </div>
                
              </form><!-- End Multi Columns Form -->
<script src="https://code.jquery.com/jquery-2.2.4.js" integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI=" crossorigin="anonymous"></script>

           <script>
           
           $(document).ready(function(){
        		$("#floatingSelect").change(function (){
        			var name=$(this).val();
        			//alert(id)
        			
        			$.get('supplierservletphone',{"name":name},function(resp){
        				var mobile=resp;
        				document.getElementById("mob").value=mobile;
        				
        			});
        		});
        	});
          
           
          	 </script>
           
            <script>
           $(document).ready(function(){
       		$("#floatingSelect1").change(function (){
       			var name1=$(this).val();
       			//alert(id1)
       			
       			$.get('supplierpriceservlet',{"name1":name1},function(resp){
       				var price=resp;
       				document.getElementById("price").value=price;
       			});
       		});
       	});
           
           </script>     
           
            </div>
          </div>

        </div> 

            </div>
          
      
    </section>

  </main><!-- End #main -->

  

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/chart.js/chart.umd.js"></script>
  <script src="assets/vendor/echarts/echarts.min.js"></script>
  <script src="assets/vendor/quill/quill.js"></script>
  <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
<%@include file="Footer.jsp" %>
</body>

</html>