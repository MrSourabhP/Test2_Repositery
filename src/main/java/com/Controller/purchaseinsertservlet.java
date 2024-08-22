package com.Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Entity.purchase;
import com.Module.pro_module;
import com.connection.connection;

/**
 * Servlet implementation class purchaseinsertservlet
 */
@WebServlet("/purchaseinsertservlet")
public class purchaseinsertservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public purchaseinsertservlet() {
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
		
		String name=request.getParameter("name");
		String hsn=request.getParameter("hsnn");
		String price=request.getParameter("prcc");
		String quantity=request.getParameter("qtyy");
		String total=request.getParameter("tt");
		
		System.out.println(name);
		System.out.println(hsn);
		System.out.println(price);
		System.out.println(quantity);
		System.out.println(total);
		
		purchase r=new purchase();
		r.setName(name);
		r.setHsn_no(hsn);
		r.setPrice(price);
		r.setQuantity(quantity);
		r.setTotal(total);
		
		try {
			pro_module p=new pro_module(connection.getConnection());
			boolean b4=p.insertpurchase(r);
			if(b4) {
				System.out.println("Insert Data Successfully in purchase Table");
				response.sendRedirect("Purchase_Table.jsp");
			}
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}
