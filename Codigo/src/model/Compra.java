package model;
import java.util.Date;

public class Compra {

	
	private Date fecha;
	private int idCompra;
	private int idDetalle;
	private int idUsuario;
	
	
	
	public Compra() {
	
	}
	public Compra(Date fecha, int idCompra, int idDetalle, int idUsuario) {
		
		this.fecha = fecha;
		this.idCompra = idCompra;
		this.idDetalle = idDetalle;
		this.idUsuario = idUsuario;
	}
	public Date getFecha() {
		return fecha;
	}
	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}
	public int getIdCompra() {
		return idCompra;
	}
	public void setIdCompra(int idCompra) {
		this.idCompra = idCompra;
	}
	public int getIdDetalle() {
		return idDetalle;
	}
	public void setIdDetalle(int idDetalle) {
		this.idDetalle = idDetalle;
	}
	public int getIdUsuario() {
		return idUsuario;
	}
	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}
	
	
	@Override
	public String toString() {
		return "Compra [fecha=" + fecha + ", idCompra=" + idCompra + ", idDetalle=" + idDetalle + ", idUsuario="
				+ idUsuario + "]";
	}
}
