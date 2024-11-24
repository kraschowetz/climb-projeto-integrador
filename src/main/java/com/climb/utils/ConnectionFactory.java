package com.climb.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionFactory {
	
	public static final String USUARIO = "root";
	public static final String SENHA = "1234";
	public static final String NOME_DB = "base_climb";
	
	public static Connection getConnection() {
		Connection connection = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = String.format("jdbc:mysql://localhost/%s", NOME_DB);
			
			connection = DriverManager.getConnection(url);
			
			return connection;
		}
		catch(SQLException e) {
			System.err.println("falha ao abrir conexão " + e.getLocalizedMessage());
			throw new RuntimeException("erro ao abrir conexão", e);
		}
		catch(Exception e) {
			System.err.println("falha ao abrir conexão");
			throw new RuntimeException("falha ao registrar driver jdbc", e);
		}
	}
	
}
