package com.climb.model;

// como caralhos vamos aramazenar os arquivos de foto?

public class Produto {
	private String nome;
	private String descricao;
	//provavelmente isso vai de String pra classe (String cor -> Cor cor)
	private String categoria, cor, tamanho;
	private float preco;
	private int id; //java não tem unsigned :(
	/*
	 * vou fingir q a imagem[] do produto nn existe, 
	 * tem mil e uma maneiras de guardar e acessar imagens no java.
	 * Acho melhor decidir em conjunto se e como vamos incorporar imagens nessa classe 
	 */
	
	public Produto() {
		this.nome = "";
		this.descricao = "";
		this.categoria = "";
		this.cor = "";
		this.tamanho = "";
		this.preco = 0.0f;
		this.id = -1;
	}
	
	public Produto(String nome, String descricao, String categoria, String cor, String tamanho, float preco) {
		this.nome = nome;
		this.descricao = descricao;
		this.categoria = categoria;
		this.cor = cor;
		this.tamanho  = tamanho;
		this.preco = preco;
	}
	
	public int getID() {
		return id;
	}
	
	public String getNome() {
		return nome;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getCategoria() {
		return categoria;
	}

	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}

	public String getCor() {
		return cor;
	}

	public void setCor(String cor) {
		this.cor = cor;
	}

	public String getTamanho() {
		return tamanho;
	}

	public void setTamanho(String tamanho) {
		this.tamanho = tamanho;
	}

	public float getPreco() {
		return preco;
	}

	public void setPreco(float preco) {
		this.preco = preco;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}
}
