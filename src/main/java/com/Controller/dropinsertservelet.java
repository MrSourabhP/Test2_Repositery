package com.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Entity.Dropdown;
import com.Module.pro_module;
import com.connection.connection;

/**
 * Servlet implementation class dropinsertservelet
 */
@WebServlet("/dropinsertservelet")
public class dropinsertservelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dropinsertservelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String supplier_name=request.getParameter("nm");
		String mobile=request.getParameter("mob");
		String product_name=request.getParameter("name");
		String price=request.getParameter("prc1");
		
		System.out.println(supplier_name);
		System.out.println(mobile);
		System.out.println(product_name);
		System.out.println(price);
		
		Dropdown d=new Dropdown();
		d.setName(supplier_name);
		d.setMobile(mobile);
		d.setProdname(product_name);
		d.setPrice(price);
		
		try {
			pro_module p=new pro_module(connection.getConnection());
			boolean b5=p.insertsupplylist(d);
			if(b5) {
				System.out.println("Insert Data Successfully In Supplier List");
				response.sendRedirect("Supplier_Table.jsp");
			}
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}
