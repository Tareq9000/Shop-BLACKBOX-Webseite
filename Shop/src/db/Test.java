package db;
import java.util.ArrayList;

import daten.Schuh;

public class Test {

	public static void main(String[] args) {
		DAO dao = new DAO();
		ArrayList<Schuh> list = dao.selectTable1();
		
		for(Schuh s : list) {
		System.out.println(s.getName());
		}
		
	}

}
