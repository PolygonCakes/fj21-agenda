package br.com.caelum.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

@WebServlet("/jsp/adicionaContato")
public class AdicionaContatoServlet extends HttpServlet {
	protected void service(HttpServletRequest request,
							HttpServletResponse response)
							throws IOException, ServletException {
		//writer
		PrintWriter out = response.getWriter();
		
		//parametros request
		String nome = request.getParameter("nome");
		String email = request.getParameter("email");
		String endereco = request.getParameter("endereco");
		String dataEmTexto = request.getParameter("dataNascimento");
		Calendar dataNascimento = null;
		
		//conversão data
		try {
			Date date = new SimpleDateFormat("dd/MM/yyyy").parse(dataEmTexto);
			dataNascimento = Calendar.getInstance();
			dataNascimento.setTime(date);
		} catch (ParseException e) {
			out.println("Erro de conversão de data");
			out.println(e);
			return; //quebra o fluxo
		}
		
		//monta um objeto contato
		Contato contato = new Contato();
		contato.setNome(nome);
		contato.setEmail(email);
		contato.setEndereco(endereco);
		contato.setDataNascimento(dataNascimento);
		
		//salvar contato
		Connection con = (Connection) request.getAttribute("cnx");
		ContatoDao dao = new ContatoDao(con);
		dao.adiciona(contato);
		
		//imprimir resultado na tela
		//out.println("<html>");
		//out.println("<head>");
		//out.println("<title>Contato adicionado</title>");
		//out.println("</head>");
		//out.println("<body>");
		//out.println("Contato: " + contato.getNome() + " adicionado com sucesso!");
		//out.println("</body>");
		//out.println("</html>");
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/contato-adicionado.jsp");
		rd.forward(request, response);
	}
}
