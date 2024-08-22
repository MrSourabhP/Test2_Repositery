package com.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Entity.provider;
import com.Module.pro_module;
import com.connection.connection;

/**
 * Servlet implementation class supplierservletphone
 */
@WebServlet("/supplierservletphone")
public class supplierservletphone extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name=req.getParameter("name");
		System.out.println(name);
		
		try {
			pro_module p=new pro_module(connection.getConnection());
			provider z=p.checkidmob(name);
			resp.getWriter().write(z.getMobile());
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}

	
	

}
