package model;

public class Detalle {
 
	private int idDetalle;
	private int idCompra;
	private int id;
	
	
	public Detalle() {
		
	}
	public Detalle(int idDetalle, int idCompra, int id) {
		
		this.idDetalle = idDetalle;
		this.idCompra = idCompra;
		this.id = id;
	}
	public int getIdDetalle() {
		return idDetalle;
	}
	public void setIdDetalle(int idDetalle) {
		this.idDetalle = idDetalle;
	}
	public int getIdCompra() {
		return idCompra;
	}
	public void setIdCompra(int idCompra) {
		this.idCompra = idCompra;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	@Override
	public String toString() {
		return "Detalle [idDetalle=" + idDetalle + ", idCompra=" + idCompra + ", id=" + id + "]";
	}
	
	
	
	
}
