package com.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Entity.purchase;
import com.Module.pro_module;
import com.connection.connection;

@WebServlet("/supplierpriceservlet")
public class supplierpriceservlet extends HttpServlet {
	
	@Override
		protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			String name1=req.getParameter("name1");
			System.out.println(name1);
			
			try {
				pro_module p=new pro_module(connection.getConnection());
				purchase a=p.checkidprice(name1);
				resp.getWriter().write(a.getPrice());
			}
			catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		
		
	}

	

}
