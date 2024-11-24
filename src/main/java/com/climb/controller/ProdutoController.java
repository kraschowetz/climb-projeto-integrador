package com.climb.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import com.climb.dao.ProdutoDAO;
import com.climb.model.Produto;

@WebServlet(
	name = 	"climb",
	urlPatterns = {
		"/cadastro",
		"/catalogo",
		"/carrinho",
		"/catalogo/editar/",
		"/catalogo/excluir/",
		"/catalogo/novo/",
		"/catalogo/update",
		"/entrega",
		"/login"
	}
)
public class ProdutoController extends HttpServlet{
	private static final long serialVersionUID = 1L;
    private ProdutoDAO dao = null;
    
    private void listar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException{
    	ArrayList<Produto> lista = dao.listar();
    	request.setAttribute("lista", lista);
    	RequestDispatcher dispatcher = request.getRequestDispatcher("/views/catalogo.jsp");
    	dispatcher.forward(request, response);
    }
    
	private void novo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nome = request.getParameter("nome");
		String descricao = request.getParameter("descricao");
		String categoria = request.getParameter("categoria");
		String cor = request.getParameter("cor");
		String tamanho = request.getParameter("tamanho");
		float preco = Float.parseFloat(request.getParameter("preco"));
		
		//tem q ter um jeito melhor de fazer isso
		if(nome != null && descricao != null && categoria != null && cor != null && tamanho != null && preco >= 0.0) {
			Produto produto = new Produto(0, nome, descricao, categoria, cor, tamanho, preco);
			dao.inserir(produto);
		}
		
		try {
			listar(request, response);
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
	}
	
	private void editar(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id_produto"));
		Produto alter = dao.buscarPorID(id);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/views/novo-produto.jsp");
		request.setAttribute("produto", alter);
		dispatcher.forward(request, response);
	}
	
	private void update(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		int id = Integer.parseInt(request.getParameter("id_produto"));
		String nome = request.getParameter("nome");
		String descricao = request.getParameter("descricao");
		String categoria = request.getParameter("categoria");
		String cor = request.getParameter("cor");
		String tamanho = request.getParameter("tamanho");
		float preco = Float.parseFloat(request.getParameter("preco"));
		
		Produto produto = new Produto(0, nome, descricao, categoria, cor, tamanho, preco);
		
		dao.atualizar(produto);
		response.sendRedirect("listar");
	}
	
	private void excluir(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id_produto"));
		dao.excluir(id);
		response.sendRedirect("listar");
	}	
	
    public ProdutoController() {
        super();
        dao = new ProdutoDAO();
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String action = request.getServletPath();
    	
    	try {
    		switch(action) {
				case "/inicio":
					RequestDispatcher dispatcher = request.getRequestDispatcher("views/inicio.jsp");
					dispatcher.forward(request, response);
					break;
				case "cadastro":
					break;
				case "catalogo":
					listar(request, response); //melhorar isso aq
				case "carrinho":
					break;
				case "catalogo/editar":
					editar(request, response);
					break;
				case "catalogo/novo":
					novo(request, response);
					break;
				case "catalogo/excluir":
					excluir(request, response);
					break;
				case "/catalogo/update":
					update(request, response);
				case "/entrega":
					break;
				case "login":
					break;
				default:
					break;
    		}
    	}
    	catch(SQLException e) {
    		throw new ServletException(e);
    	}
    }
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response); //aha!
	}
}
