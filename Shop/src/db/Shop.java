package db;
import java.util.ArrayList;

public class Shop {

	private ArrayList<String> idlist = new ArrayList<String>();
	private ArrayList<String> namelist = new ArrayList<String>();
	private ArrayList<String> markelist = new ArrayList<String>();
	private ArrayList<String> bildlist = new ArrayList<String>();
	private ArrayList<String> preislist = new ArrayList<String>();
	
	private ArrayList<String> idlist2 = new ArrayList<String>();
	private ArrayList<String> namelist2 = new ArrayList<String>();
	private ArrayList<String> bildlist2 = new ArrayList<String>();
	private ArrayList<String> preislist2 = new ArrayList<String>();
	
	public ArrayList<String> getIdlist() {
		return idlist;
	}
	public void setIdlist(ArrayList<String> idlist) {
		this.idlist = idlist;
	}
	public ArrayList<String> getNamelist() {
		return namelist;
	}
	public void setNamelist(ArrayList<String> namelist) {
		this.namelist = namelist;
	}
	public ArrayList<String> getMarkelist() {
		return markelist;
	}
	public void setMarkelist(ArrayList<String> markelist) {
		this.markelist = markelist;
	}
	public ArrayList<String> getBildlist() {
		return bildlist;
	}
	public void setBildlist(ArrayList<String> bildlist) {
		this.bildlist = bildlist;
	}
	public ArrayList<String> getIdlist2() {
		return idlist2;
	}
	public void setIdlist2(ArrayList<String> idlist2) {
		this.idlist2 = idlist2;
	}
	public ArrayList<String> getNamelist2() {
		return namelist2;
	}
	public void setNamelist2(ArrayList<String> namelist2) {
		this.namelist2 = namelist2;
	}

	public ArrayList<String> getBildlist2() {
		return bildlist2;
	}
	public void setBildlist2(ArrayList<String> bildlist2) {
		this.bildlist2 = bildlist2;
	}
	public ArrayList<String> getPreislist2() {
		return preislist2;
	}
	public void setPreislist2(ArrayList<String> preislist2) {
		this.preislist2 = preislist2;
	}
	public ArrayList<String> getPreislist() {
		return preislist;
	}
	public void setPreislist(ArrayList<String> preislist) {
		this.preislist = preislist;
	}
	
	
	
	private String id;
	private String marke;
	private String name;
	
	
	private String bild;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getMarke() {
		return marke;
	}
	public void setMarke(String marke) {
		this.marke = marke;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBild() {
		return bild;
	}
	public void setBild(String bild) {
		this.bild = bild;
	}
	@Override
	public String toString() {
		return bild + id  + "\n"+ marke +"\n"+ name  ;
	}
	
	
}
