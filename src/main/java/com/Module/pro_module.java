package com.Module;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.Entity.Dropdown;
import com.Entity.login;
import com.Entity.product;
import com.Entity.provider;
import com.Entity.purchase;

public class pro_module {
	Connection com;
	
	public pro_module(Connection com) {
		
		super();
		this.com=com;
	}

	public boolean insert(product d) throws SQLException {
		// TODO Auto-generated method stub
		boolean b=false;
		String sql=("insert into product(Product_Name, Hsn_No)values(?, ?)");
		PreparedStatement ps=com.prepareStatement(sql);
		ps.setString(1, d.getName());
		ps.setString(2, d.getHsn());
		int i=ps.executeUpdate();
		if(i==1) {
			System.out.println("insert data Successfully");
			b=true;
			
		}
		return b;
	}
	 
	public List<product> allrecord() throws SQLException{
		List<product> pl=new ArrayList<product>();
		product a=null;
		String sql="select * from product";
		PreparedStatement ps=com.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			a=new product();
			a.setSrno(rs.getInt(1));
			a.setName(rs.getString(2));
			a.setHsn(rs.getString(3));
			pl.add(a);
		}
		return pl;
	}
	
	public List<product> updt(int id) throws SQLException{
		List<product> m=new ArrayList<product>();
		product t=null;
		String sql="select * from product where Sr_No=?";
		PreparedStatement ps=com.prepareStatement(sql);
		ps.setInt(1, id);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			t=new product();
			t.setSrno(rs.getInt(1));
			t.setName(rs.getString(2));
			t.setHsn(rs.getString(3));
			m.add(t);
		}
		return m;
	}

	public boolean updateprod(product d) {
		// TODO Auto-generated method stub
		boolean b2=false;
		try {
			String sql="update product set Product_Name=?, Hsn_No=? where Sr_No=?";
			PreparedStatement ps=com.prepareStatement(sql);
			ps.setString(1, d.getName());
			ps.setString(2, d.getHsn());
			ps.setInt(3, d.getSrno());
			int i=ps.executeUpdate();
			if(i==1) {
				b2=true;
			}
		}
		catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return b2;
	}

	public boolean delete(int id) throws SQLException {
		// TODO Auto-generated method stub
		boolean b3=false;
		String sql="delete from product where Sr_No=?";
		PreparedStatement ps=com.prepareStatement(sql);
		ps.setInt(1, id);
		int i=ps.executeUpdate();
		if(i==1) {
			b3=true;
		}
		return b3;
	}
	
	public List<product> fetchprd() throws SQLException{
		List<product> l=new ArrayList<product>();
		product c=null;
		PreparedStatement ps=com.prepareStatement("select * from product");
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			c=new product();
			c.setSrno(rs.getInt(1));
			c.setName(rs.getString(2));
			c.setHsn(rs.getString(3));
			l.add(c);
		}
		return l;
	}

	public product checkidd(String id) throws SQLException {
		// TODO Auto-generated method stub
		product t=null;
		String sql="select * from product where Product_Name=?";
		PreparedStatement ps=com.prepareStatement(sql);
		ps.setString(1, id);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			t=new product();
			t.setSrno(rs.getInt(1));
			t.setName(rs.getString(2));
			t.setHsn(rs.getString(3));
		}
		return t;
	}

	public boolean insertpurchase(purchase r) throws SQLException {
		// TODO Auto-generated method stub
		boolean b4=false;
		String sql=("insert into purchase(Product_Name, Hsn_No, Price, Quantity, Total)values(?, ?, ?, ?, ?)");
		PreparedStatement ps=com.prepareStatement(sql);
		ps.setString(1, r.getName());
		ps.setString(2, r.getHsn_no());
		ps.setString(3, r.getPrice());
		ps.setString(4, r.getQuantity());
		ps.setString(5, r.getTotal());
		int i=ps.executeUpdate();
		if(i==1) {
			System.out.println("Insert Data Successfully in purchase Table");
			b4=true;
		}
		return b4;
	}
	
	public List<purchase> allpurchase() throws SQLException{
		List<purchase> l=new ArrayList<purchase>();
		purchase b=null;
		String sql="select * from purchase";
		PreparedStatement ps=com.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			b=new purchase();
			b.setId(rs.getInt(1));
			b.setName(rs.getString(2));
			b.setHsn_no(rs.getString(3));
			b.setPrice(rs.getString(4));
			b.setQuantity(rs.getString(5));
			b.setTotal(rs.getString(6));
			l.add(b);
		}
		return l;
		
	}
	
	public List<purchase> invoice(int id) throws SQLException{
		List<purchase> n=new ArrayList<purchase>();
		purchase f=null;
		String sql="select * from purchase where Id=?";
		PreparedStatement ps=com.prepareStatement(sql);
		ps.setInt(1, id);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			f=new purchase();
			f.setId(rs.getInt(1));
			f.setName(rs.getString(2));
			f.setHsn_no(rs.getString(3));
			f.setPrice(rs.getString(4));
			f.setQuantity(rs.getString(5));
			f.setTotal(rs.getString(6));
			n.add(f);
		}
		return n;
	}
	
	public List<purchase> invoice1(int id) throws SQLException{
		List<purchase> m=new ArrayList<purchase>();
		purchase t=null;
		String sql="select * from purchase where Id=?";
		PreparedStatement ps=com.prepareStatement(sql);
		ps.setInt(1, id);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			t=new purchase();
			t.setId(rs.getInt(1));
			t.setName(rs.getString(2));
			t.setHsn_no(rs.getString(3));
			t.setPrice(rs.getString(4));
			t.setQuantity(rs.getString(5));
			t.setTotal(rs.getString(6));
			m.add(t);
		}
		return m;
	}

	public boolean insertsupplier(provider r) throws SQLException {
		// TODO Auto-generated method stub
		boolean b5=false;
		String sql=("insert into supplier(Supplier_Name, Phone_No)values(?, ?)");
		PreparedStatement ps=com.prepareStatement(sql);
		ps.setString(1, r.getName());
		ps.setString(2, r.getMobile());
		int i=ps.executeUpdate();
		if(i==1) {
			System.out.println("Insert Data Successfully In Supplier Table");
			b5=true;
		}
		return b5;
	}
	
	public List<provider> fetchsuppno() throws SQLException{
		List<provider> l=new ArrayList<provider>();
		provider d=null;
		PreparedStatement ps=com.prepareStatement("select * from supplier");
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			d=new provider();
			d.setId(rs.getInt(1));
			d.setName(rs.getString(2));
			d.setMobile(rs.getString(3));
			l.add(d);
		}
		return l;
	}

	public provider checkidmob(String name) throws SQLException {
		// TODO Auto-generated method stub
		provider z=null;
		String sql="select * from supplier where Supplier_Name=?";
		PreparedStatement ps=com.prepareStatement(sql);
		ps.setString(1, name);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			z=new provider();
			z.setId(rs.getInt(1));
			z.setName(rs.getString(2));
			z.setMobile(rs.getString(3));
		}
		return z;
		
	}
	
	public List<purchase> fetchproduct() throws SQLException{
		List<purchase> l=new ArrayList<purchase>();
		purchase n=null;
		PreparedStatement ps=com.prepareStatement("select * from purchase");
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			n=new purchase();
			n.setId(rs.getInt(1));
			n.setName(rs.getString(2));
			n.setHsn_no(rs.getString(3));
			n.setPrice(rs.getString(4));
			n.setQuantity(rs.getString(5));
			n.setTotal(rs.getString(6));
			l.add(n);	
			}
		return l;
	}

	public purchase checkidprice(String name1) throws SQLException {
		// TODO Auto-generated method stub
		purchase a=null;
		String sql="select * from purchase where Product_Name=?";
		PreparedStatement ps=com.prepareStatement(sql);
		ps.setString(1, name1);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			a=new purchase();
			a.setId(rs.getInt(1));
			a.setName(rs.getString(2));
			a.setHsn_no(rs.getString(3));
			a.setPrice(rs.getString(4));
			a.setQuantity(rs.getString(5));
			a.setTotal(rs.getString(6));
		}
		
		return a;
	}

	public boolean insertsupplylist(Dropdown d) throws SQLException {
		// TODO Auto-generated method stub
		boolean b5=false;
		String sql=("insert into supplierlist(Supplier_Name, Mobile_No, Product_Name, Price) values(?, ?, ?, ?)");
		PreparedStatement ps=com.prepareStatement(sql);
		ps.setString(1, d.getName());
		ps.setString(2, d.getMobile());
		ps.setString(3, d.getProdname());
		ps.setString(4, d.getPrice());
		int i=ps.executeUpdate();
		if(i==1) {
			System.out.println("Insert Data Successfully In Supplier List");
			b5=true;
		}
		return b5;
	}
	
	public List<Dropdown> alldropdown() throws SQLException{
		List<Dropdown> dl=new ArrayList<Dropdown>();
		Dropdown d=null;
		String sql="select * from supplierlist";
		PreparedStatement ps=com.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			d=new Dropdown();
			d.setId(rs.getInt(1));
			d.setName(rs.getString(2));
			d.setMobile(rs.getString(3));
			d.setProdname(rs.getString(4));
			d.setPrice(rs.getString(5));
			dl.add(d);
		}
		return dl;
	}
	
	public List<Dropdown> allsupbil(int id) throws SQLException{
		List<Dropdown> o=new ArrayList<Dropdown>();
		Dropdown m=null;
		String sql="select * from supplierlist where id=?";
		PreparedStatement ps=com.prepareStatement(sql);
		ps.setInt(1, id);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			m=new Dropdown();
			m.setId(rs.getInt(1));
			m.setName(rs.getString(2));
			m.setMobile(rs.getString(3));
			m.setProdname(rs.getString(4));
			m.setPrice(rs.getString(5));
			o.add(m);
		}
		return o;
	}
	
	public List<product> searchprd(String name) throws SQLException{
		List<product> a=new ArrayList<product>();
		product c=null;
		PreparedStatement ps=com.prepareStatement("select * from product where Product_Name=?");
		ps.setString(1, name);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			c=new product();
			c.setSrno(rs.getInt(1));
			c.setName(rs.getString(2));
			c.setHsn(rs.getString(3));
			a.add(c);
		}
		return a;
		
	}
			
}
	 	



