package br.com.kidshppystore.bean;

public class Categoria {
	private int idCategoria;
	private String nomeCategoria;
	private String linha;
	private String faixa_etaria;
	
	public Categoria(int idCategoria, String nomeCategoria,String linha,String faixa_etaria ) {
		this.idCategoria = idCategoria;
		this.nomeCategoria = nomeCategoria;
		this.linha = linha;
		this.faixa_etaria = faixa_etaria;
	}
	
	public Categoria() {

	}

	public int getIdCategoria() {
		return idCategoria;
	}

	public void setIdCategoria(int idCategoria) {
		this.idCategoria = idCategoria;
	}

	public String getNomeCategoria() {
		return nomeCategoria;
	}

	public void setNomeCategoria(String nomeCategoria) {
		this.nomeCategoria = nomeCategoria;
	}

	public String getLinha() {
		return linha;
	}

	public void setLinha(String linha) {
		this.linha = linha;
	}

	public String getFaixa_etaria() {
		return faixa_etaria;
	}

	public void setFaixa_etaria(String faixa_etaria) {
		this.faixa_etaria = faixa_etaria;
	}
	
	
}
