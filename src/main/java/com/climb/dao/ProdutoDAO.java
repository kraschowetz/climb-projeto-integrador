package com.climb.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.climb.model.Produto;
import com.climb.utils.ConnectionFactory;

public class ProdutoDAO {
	Connection connection;
	
	public boolean inserir(Produto produto) {
		try {
			connection = ConnectionFactory.getConnection();
			String sql = "INSERT INTO produtos (nome, descricao, categoria, cor, tamanho, preco) values (?, ?, ?, ?, ?, ?);";
			
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1, produto.getNome());
			ps.setString(2, produto.getDescricao());
			ps.setString(3, produto.getCategoria());
			ps.setString(4, produto.getCor());
			ps.setString(5, produto.getTamanho());
			ps.setFloat(6, produto.getPreco());
			
			if(ps.executeUpdate() > 0) {
				return true;
			}
		}
		catch(SQLException ex) {
			ex.printStackTrace();
		}

		return false;
	}
	
	public ArrayList<Produto> listar() {
		ArrayList<Produto> produtos = new ArrayList<>();
		String sql = "SELECT * FROM produtos;";
		
		try {
			Connection connection = ConnectionFactory.getConnection();
			PreparedStatement ps = connection.prepareStatement(sql);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				int id = rs.getInt("id_produto");
				String nome = rs.getString("nome");
				String descricao = rs.getString("descricao");
				String categoria = rs.getString("categoria");
				String cor = rs.getString("cor");
				String tamanho = rs.getString("tamanho");
				float preco = rs.getFloat("preco");
				
				Produto item = new Produto(id, nome, descricao, categoria, cor, tamanho, preco);
				
				produtos.add(item);
			}
		}
		catch(SQLException ex) { 
			ex.printStackTrace();
		}
		
		return produtos;
		
	}
	
	public Produto buscarPorID(int id) {
		Produto produto = null;
		String sql = "SELECT * FROM produtos WHERE id_produto = ?;";
		
		try {
			Connection connection = ConnectionFactory.getConnection();
			PreparedStatement ps = connection.prepareStatement(sql);
			
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				String nome = rs.getString("nome");
				String descricao = rs.getString("descricao");
				String categoria = rs.getString("categoria");
				String cor = rs.getString("cor");
				String tamanho = rs.getString("tamanho");
				float preco = rs.getFloat("preco");
				
				produto = new Produto(id, nome, descricao, categoria, cor, tamanho, preco);
			}
		}
		catch(SQLException ex) {
			ex.printStackTrace();
		}
		
		return produto;
	}
	
	public boolean atualizar(Produto produto) {
		try {
			String sql = "UPDATE produtos SET nome=?, descricao=?, categoria=?, cor=?, tamanho=?, preco=? WHERE id_produto=?;";
			
			Connection connection = ConnectionFactory.getConnection();
			PreparedStatement ps = connection.prepareStatement(sql);
			
			ps.setString(1, produto.getNome());
			ps.setString(2, produto.getDescricao());
			ps.setString(3, produto.getCategoria());
			ps.setString(4, produto.getCor());
			ps.setString(5, produto.getTamanho());
			ps.setFloat(6, produto.getPreco());
			
			if(ps.executeUpdate() > 0) {
				connection.close();
				return true;
			}
		}
		catch(SQLException ex) {
			ex.printStackTrace();
		}
		finally {
			if(connection != null) {
				try {
					connection.close();
				}
				catch(SQLException ex) {
					ex.printStackTrace();
				}
			}
		}
		
		return false;
	}

	public boolean excluir(int id) {
		try {
			String sql = "DELETE FROM produtos WHERE id_produto=?;";
			
			Connection connection = ConnectionFactory.getConnection();
			PreparedStatement ps = connection.prepareStatement(sql);
			
			ps.setInt(1, id);
			
			if(ps.executeUpdate() > 0) {
				connection.close();
				return true;
			}
		}
		catch(SQLException ex) {
			ex.printStackTrace();
		}
		finally {
			if(connection != null) {
				try {
					connection.close();
				}
				catch(SQLException ex) {
					ex.printStackTrace();
				}
			}
		}
		
		return false;
	}
}
