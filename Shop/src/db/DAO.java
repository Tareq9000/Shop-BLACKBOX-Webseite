package db;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import daten.Schuh;

public class DAO {

	
	private String id;
	private String brand;
	private String name;
	private String price;
	private String bild;
	
	private String id2;
	private String name2;
	private String price2;
	private String bild2;
	
	ArrayList<String> idlist = new ArrayList<String>();
	ArrayList<String> namelist = new ArrayList<String>();
	ArrayList<String> markelist = new ArrayList<String>();
	ArrayList<String> bildlist = new ArrayList<String>();
	ArrayList<String> preislist = new ArrayList<String>();
	
	ArrayList<String> idlist2 = new ArrayList<String>();
	ArrayList<String> namelist2 = new ArrayList<String>();
	ArrayList<String> bildlist2 = new ArrayList<String>();
	ArrayList<String> preislist2 = new ArrayList<String>();
	
	//Gibt alle Schuhe zurück
	public ArrayList<Schuh> selectTable1() {
		ArrayList<Schuh> list = new ArrayList<Schuh>();
		Connection con = null;
		Shop shop = new Shop();
		String query = "select id, brand, name, price, bild from sneakers";
		
		try {
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shop", "root", "1234");
				
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(query);
				
				while(rs.next()) {
					Schuh schuh = new Schuh();
					id = rs.getString("id");
					brand = rs.getString("brand");
					name = rs.getString("name");
					price = rs.getString("price");
					bild = rs.getString("bild");
					schuh.setId(id);
					schuh.setBrand(brand);
					schuh.setName(name);
					schuh.setPrice(price);
					schuh.setBild(bild);
					list.add(schuh);
					
					System.out.println(id + " " + brand + " " + name);
				}
		}catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		
		if(con != null) {
			
			try {
				con.close();
			} catch (SQLException e) {
				System.out.println(e.getMessage());
			}
		}
		return list;
	}
	
public void selectTable2() {
		
		Connection con = null;
		Shop shop = new Shop();
		String query = "select id, name, price, bild from clothes";
		
		try {
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shop", "root", "1234");
				
				Statement stmt = con.createStatement();
				ResultSet rs = stmt.executeQuery(query);
				
				while(rs.next()) {
					
					id2 = rs.getString("id");
					name2 = rs.getString("name");
					price2 = rs.getString("price");
					bild2 = rs.getString("bild");
					
					idlist2.add(id2);
					namelist2.add(name2);
					bildlist2.add(bild2);
					preislist2.add(price2);
					
					System.out.println(id2 + " " + name2 + " " + price2);
				}
		}catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		
		if(con != null) {
			
			try {
				con.close();
			} catch (SQLException e) {
				System.out.println(e.getMessage());
			}
		}
		shop.setIdlist2(idlist2);
		shop.setNamelist2(namelist2);
		shop.setBildlist2(bildlist2);
		shop.setPreislist2(preislist2);
	}
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getBild() {
		return bild;
	}

	public void setBild(String bild) {
		this.bild = bild;
	}

	public String getId2() {
		return id2;
	}

	public void setId2(String id2) {
		this.id2 = id2;
	}

	public String getName2() {
		return name2;
	}

	public void setName2(String name2) {
		this.name2 = name2;
	}

	public String getPrice2() {
		return price2;
	}

	public void setPrice2(String price2) {
		this.price2 = price2;
	}

	public String getBild2() {
		return bild2;
	}

	public void setBild2(String bild2) {
		this.bild2 = bild2;
	}
}