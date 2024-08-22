<%@page import="com.Entity.product"%>
<%@page import="java.util.List"%>
<%@page import="com.connection.connection"%>
<%@page import="com.Module.pro_module"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="Header.jsp" %>
<main id="main" class="main">
    <div class="pagetitle">
      <h2>Add Product Form</h2>
      
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        <div class="col-lg-6">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Add Product</h5>

              <!-- General Form Elements -->
              
              <form action="updateproduct" method="post">
              
              <%
                try{
                	int id=Integer.parseInt(request.getParameter("id"));
                	pro_module p=new pro_module(connection.getConnection());
                	List<product> n=p.updt(id);
                	for(product m:n){
              %>
              
              <div class="row mb-3">
                  <label for="inputNumber" class="col-sm-2 col-form-label">Sr_No</label>
                  <div class="col-sm-10">
                    <input type="number" name="id" value="<%=m.getSrno() %>" class="form-control">
                    </div>
               </div>
                  
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label">Product Name</label>
                  <div class="col-sm-10">
                    <input type="text" name="nm" value="<%=m.getName() %>" class="form-control">
                  </div>
                </div>
                
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label">HSN_NO</label>
                  <div class="col-sm-10">
                    <input type="text" name="hsn" value="<%=m.getHsn() %>" class="form-control">
                  </div>
                </div>
                
                <div class="row mb-3">
                  <label class="col-sm-2 col-form-label"></label>
                  <div class="col-sm-10">
                    <button type="submit" class="btn btn-outline-success" style="float: left;">Submit Form</button>
                  </div>
                </div>
                <div class="row mb-3">
                  <label class="col-sm-2 col-form-label"></label>
                  <div class="col-sm-10">
                    <button type="reset" class="btn btn-outline-light" style="float: left ;">Reset Form</button>
                  </div>
                </div>

              </form><!-- End General Form Elements -->
              
              <%
                	}
                	
                }
                 catch(Exception e){
                	 e.printStackTrace();
                 }
              
              %>

            </div>
           </div>
         </div>
       </div>
       
       </section>
        
  </main><!-- End #main -->
  <%@include file="Footer.jsp" %>
