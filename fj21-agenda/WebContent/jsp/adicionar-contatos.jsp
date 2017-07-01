<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Adicionar Contatos</title>
		
		<link href="../css/jquery.css" rel="stylesheet">
		<script src="../js/jquery.js"></script>
		<script src="../js/jquery-ui.js"></script>
		<link href="../css/style.css" rel="stylesheet" type="text/css">
	</head>
	<body>
		<c:import url="/jsp/cabecalho.jsp" />
		<h1>Adiciona Contatos</h1>
		<hr/>
		
		<form action="adicionaContato" method="post" class="form">
			<label for="nome" class="text">Nome:</label>
			<input type="text" name="nome" class="text input"/>
			
			<label for="email" class="text">Email:</label>
			<input type="text" name="email" class="text input"/>
			
			<label for="endereco" class="text">Endereço:</label>
			<input type="text" name="endereco" class="text input"/>
			
			<label for="dataNascimento" class="text">Data Nascimento:</label>
			<caelum:campoData id="dataNascimento" className="text input"/>
			
			<input type="submit" value="Gravar" class="button"/>
		</form>
		<c:import url="/jsp/rodape.jsp" />
	</body>
</html>