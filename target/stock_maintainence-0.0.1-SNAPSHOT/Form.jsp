<%@include file="Header.jsp" %>

  <!-- ======= Header ======= -->
 

  <main id="main" class="main">
    <div class="pagetitle">
      <h3 style="color: maroon;">Add Product Form</h3>
      
    </div><!-- End Page Title -->

    <section class="section">
      <div class="row">
        <div class="col-lg-6">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Add Product</h5>

              <!-- General Form Elements -->
              <form action="productservlet" method="post">
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label">Product Name</label>
                  <div class="col-sm-10">
                    <input type="text" name="nm" class="form-control">
                  </div>
                </div>
                
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label">HSN_NO</label>
                  <div class="col-sm-10">
                    <input type="text" name="hsn" class="form-control">
                  </div>
                </div>
                
                <div class="row mb-3">
                  <label class="col-sm-2 col-form-label"></label>
                  <div class="col-sm-10">
                    <button type="submit" class="btn btn-outline-success">Submit Form</button>
                  </div>
                </div>
                <div class="row mb-3">
                  <label class="col-sm-2 col-form-label"></label>
                  <div class="col-sm-10">
                    <button type="reset" class="btn btn-outline-light">Reset Form</button>
                  </div>
                </div>

              </form><!-- End General Form Elements -->

            </div>
           </div>
         </div>
       </div>
       </section>
        
  </main><!-- End #main -->
 

  <%@include file="Footer.jsp" %>