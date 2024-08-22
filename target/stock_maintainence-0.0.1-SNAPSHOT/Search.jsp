<%@page import="com.Entity.product"%>
<%@page import="java.util.List"%>
<%@page import="com.connection.connection"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.Module.pro_module"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="Header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
      <main class="main" id="main">
        <div class="pagetitle">
      <h2 style="color: maroon;"></h2>
      
      <section class="section">
      <div class="row">
        <div class="col-lg-6">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title" align="center" style="color: navy;">Search Product Information</h5>
              
              <form action="Search.jsp" method="post">
              
              <input type="text" name="nm" placeholder="Search Here" style="margin: 4px; padding: 3px;"><br>
         
               <button type="submit" class="btn btn-primary">Search</button>     
              
      </form> 
       
          <table class="table">
                <thead>
                  <tr>
                    <th>Id</th>
                    <th>Product Name</th>
                    <th>HSN_NO</th>
                  </tr>
                </thead>
                <tr>
                <%
                   String name=request.getParameter("nm");
                   try{
                	   
                	  pro_module p=new pro_module(connection.getConnection());
                	   List<product> c=p.searchprd(name);
                	   for(product b:c){
                %>
                
                
                    <td><%=b.getSrno() %></td>
                    <td><%=b.getName() %></td>
                    <td><%=b.getHsn() %></td>
                </tr>
                
                <%
                	   }
                	   
                   }
                     catch(Exception e){
                    	 e.printStackTrace();
                     }
                %>
                
                
              </table>
           
      </div>
      </div>
      </div>
      </div>
      </section>
      
      
    </div>
         
 </main> 
 <%@include file="Footer.jsp" %>   
</body>
</html>