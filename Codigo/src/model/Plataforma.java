package model;

public class Plataforma {

	private int id;
	private String empresa;
	private String nombre;
	private String lanzamiento;
	
	
	public Plataforma() {
		
	}
	public Plataforma(int id, String empresa, String nombre, String lanzamiento) {
		
		this.id = id;
		this.empresa = empresa;
		this.nombre = nombre;
		this.lanzamiento = lanzamiento;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getEmpresa() {
		return empresa;
	}
	public void setEmpresa(String empresa) {
		this.empresa = empresa;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getLanzamiento() {
		return lanzamiento;
	}
	public void setLanzamiento(String lanzamiento) {
		this.lanzamiento = lanzamiento;
	}
}
