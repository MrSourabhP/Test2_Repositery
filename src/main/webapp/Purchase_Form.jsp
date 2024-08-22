<%@page import="com.Entity.product"%>
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

  <title>Forms / Validation - NiceAdmin Bootstrap Template</title>
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
      <h1 style="color: fuchsia;">Purchase Form</h1>
      
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        <div class="col-lg-7">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title" align="center" style="color: lime;">Purchase</h5>
              <p></p>

              <!-- Browser Default Validation -->
              <form class="row g-3" action="purchaseinsertservlet" method="post">
              
                 <label for="validationDefault01" class="form-label">Product Name:</label>
                 <select class="form-select" name="name" placeholder="Name" id="floatingSelect" style="margin: 8px; padding: 4px;">
                 <option value="0">Select</option>        
             
      <%
        try{
        	pro_module p=new pro_module(connection.getConnection());
        	List<product> t=p.fetchprd();
        	for(product c:t){
      %>
       <option value="<%=c.getName() %>"><%=c.getName() %></option>
      <%
        	}
        	
        }
          catch(Exception e){
        	  e.printStackTrace();
        	  
          }
      %>
      </select>
      
      
                
                 <div class="col-md-4">
                  <label for="validationDefault02" class="form-label">Hsn_No</label>
                  <input type="text" name="hsnn" class="form-control" id="hsnn">
                </div>
                <div class="col-md-4">
                  <label for="validationDefault02" class="form-label">Price</label>
                  <input type="text" name="prcc" class="form-control" id="prcc">
                </div>
                <div class="col-md-4">
                  <label for="validationDefault02" class="form-label">Quantity</label>
                  <input type="text" name="qtyy" class="form-control" id="qtyy" onkeyup="multi()">
                </div>
                <div class="col-md-6">
                  <label for="validationDefault03" class="form-label">Total</label>
                  <input type="text" name="tt" class="form-control" id="tt">
                </div>
                <div class="col-12">
                  <button class="btn btn-outline-info" type="submit">Submit</button>
                </div>
              </form>
              
<script type="text/javascript">
function multi(){
	var prc=document.getElementById("prcc").value;
	var qty=document.getElementById("qtyy").value;
	var total=prc*qty;
	document.getElementById("tt").value=total;
	}

</script>
<script src="https://code.jquery.com/jquery-2.2.4.js" integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI=" crossorigin="anonymous"></script>
<script>
// JQuery code for getting price which is alraedy 


$(document).ready(function(){
	$("#floatingSelect").change(function (){
		var id=$(this).val();
		//alert(id);
		
		$.get('purchaseproduct',{"id":id},function(resp){
			var hsn=resp;
			document.getElementById("hsnn").value=hsn;
		});
	});
});


</script>
                  
                  
              
             
              
            </div>
          </div>

        </div>

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