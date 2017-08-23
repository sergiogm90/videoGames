package model;
import java.util.GregorianCalendar;

public class Videojuego {

	
	private int id;
	private String nombre;
	private double precio;
	private Categoria categoria;
	private String lanzamiento;
	private int idPlataforma;
	private String imagen;
	private int stock;
	private String descripcion;
	
	
	

	public Videojuego() {
		
	}
	
	
	public Videojuego(String nombre, double precio, Categoria categoria, String lanzamiento, int idPlataforma,
			String imagen, int stock, String descripcion) {
		super();
		this.nombre = nombre;
		this.precio = precio;
		this.categoria = categoria;
		this.lanzamiento = lanzamiento;
		this.idPlataforma = idPlataforma;
		this.imagen = imagen;
		this.stock = stock;
		this.descripcion = descripcion;
	}
	public Videojuego(int id,String nombre, double precio, Categoria categoria, String lanzamiento, int idPlataforma, int stock) {
		this.id= id;
		this.nombre = nombre;
		this.precio = precio;
		this.categoria = categoria;
		this.lanzamiento = lanzamiento;
		this.idPlataforma = idPlataforma;
		this.stock = stock;
	}


	public Videojuego(int id,String nombre, double precio, Categoria categoria, String lanzamiento, int idPlataforma, String imagen, int stock,String descripcion) {
		
		this.id= id;
		this.nombre = nombre;
		this.precio = precio;
		this.categoria = categoria;
		this.lanzamiento = lanzamiento;
		this.idPlataforma = idPlataforma;
		this.imagen = imagen;
		this.stock = stock;
		this.descripcion=descripcion;
	}
	
	
	
	
	public int getIdPlataforma() {
	return idPlataforma;
	}
	public void setIdPlataforma(int idPlataforma) {
	this.idPlataforma = idPlataforma;
	}	
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public double getPrecio() {
		return precio;
	}
	public void setPrecio(double precio) {
		this.precio = precio;
	}
	public Categoria getCategoria() {
		return categoria;
	}
	public void setCategoria(Categoria categoria) {
		this.categoria = categoria;
	}
	public String getLanzamiento() {
		return lanzamiento;
	}
	public void setLanzamiento(String lanzamiento) {
		this.lanzamiento = lanzamiento;
	}
	
	public String getImagen() {
		return imagen;
	}
	public void setImagen(String imagen) {
		this.imagen = imagen;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	@Override
	public String toString() {
		return "Videojuego [id=" + id + ", nombre=" + nombre + ", precio="
				+ precio + ", categoria=" + categoria + ", lanzamiento="
				+ lanzamiento + ", idPlataforma=" + idPlataforma + ", imagen="
				+ imagen + ", stock=" + stock + ", descripcion=" + descripcion
				+ "]";
	}
	
	
	
	
	
}
