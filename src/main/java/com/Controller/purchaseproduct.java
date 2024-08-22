package com.Controller;

import java.io.IOException;import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Entity.product;
import com.Module.pro_module;
import com.connection.connection;

/**
 * Servlet implementation class purchaseproduct
 */
@WebServlet("/purchaseproduct")
public class purchaseproduct extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id=req.getParameter("id");
		System.out.println(id);
		
		try {
			pro_module p=new pro_module(connection.getConnection());
			product pp=p.checkidd(id);
			resp.getWriter().write(pp.getHsn());
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
}
