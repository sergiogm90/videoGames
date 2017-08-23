package model;

public class Usuario {

	
	private int idUsuario;
	private String nombre;
	private String apellidos;
	private String direccion;
	private String email;
	private String pass;
	
	
	public Usuario() {
		
	}
	
	public Usuario(String email, String pass) {
		this.email = email;
		this.pass = pass;
	}

	public Usuario(int id, String nombre, String apellidos, String direccion, String email, String pass) {
		
		this.idUsuario = id;
		this.nombre = nombre;
		this.apellidos = apellidos;
		this.direccion = direccion;
		this.email = email;
		this.pass = pass;
	}
	public int getIdUsuario() {
		return idUsuario;
	}
	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellidos() {
		return apellidos;
	}
	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	
	@Override
	public String toString() {
		return "Usuario [id=" + idUsuario + ", nombre=" + nombre + ", apellidos=" + apellidos + ", direccion=" + direccion
				+ ", email=" + email + ", pass=" + pass + "]";
	}
}
