package com.tfg.servlets;

import java.io.Serializable;

public class Sensores implements Serializable{

    private int id;//Esto no se si lo necesito
    private String usuario;
    private String acelerometro;
    private String giroscopio;

    public Sensores(){

    }

    public Sensores(int id, String usuario, String acelerometro, String giroscopio){
        this.id = id;
        this.usuario = usuario;
        this.acelerometro = acelerometro;
        this.giroscopio = giroscopio;
    }

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public String getAcelerometro() {
		return acelerometro;
	}

	public void setAcelerometro(String acelerometro) {
		this.acelerometro = acelerometro;
	}

	public String getGiroscopio() {
		return giroscopio;
	}

	public void setGiroscopio(String giroscopio) {
		this.giroscopio = giroscopio;
	}
    
}
