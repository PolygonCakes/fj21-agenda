<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Lista de Contatos</title>
		<style>
			* {
				margin: 0;
				padding: 0;
				font-family: Arial;
			}
			h1 {
				margin: 100px auto 50px auto;
				text-align: center;
			}
			table {
				margin: 50px auto;
				background-color:#F7F7F7;
			}
			tr {
				height: 40px;
			}
			td {
				padding:5px;
			}
			a {
				color:#4286f4;
			}
			.menu {
				position: fixed;
				top: 0;
				height: 50px;
				width: 100%;
				background-color: #F7F7F7;
				display: inline-flex;
				align-items: center;
			}
		</style>
	</head>
	<body>
		<c:import url="/jsp/cabecalho.jsp" />
		<h1>Lista de Contatos</h1>
		<hr/>
			
		<table>
			<!-- cabeçalho da tabela -->
			<tr bgcolor="#4286f4">
					<td><strong>Nome</strong></td>
					<td><strong>Email</strong></td>
					<td><strong>Endereco</strong></td>
					<td><strong>Data Nascimento</strong></td>
					<td><strong>Remover</strong></td>
			</tr>
			
			<!-- linhas da tabela -->
			<c:forEach var="contato" items="${contatos}" varStatus="id">
				<tr bgcolor="#${id.count % 2 == 0 ? 'f2ffed' : 'FFFFFF' }">
					<td>${contato.nome}</td>
					<!-- 
					<td>
						<c:if test="${not empty contato.email}">
							<a href="mailto:${contato.email}">${contato.email}</a>
						</c:if>
						<c:if test="${empty contato.email}">
							Email não informado
						</c:if>
					</td>
					 -->
					 <td>
					 	<c:choose>
					 		<c:when test="${not empty contato.email}">
					 			<a href="mailto:${contato.email}">${contato.email}</a>
					 		</c:when>
					 		<c:otherwise>
					 			Email não informado
					 		</c:otherwise>
					 	</c:choose>
					 </td>
					<td>${contato.endereco}</td>
					<td><fmt:formatDate value="${contato.dataNascimento.time}" pattern="dd/MM/yyyy" /></td>
					<td><a href="/fj21-agenda/mvc?logica=RemoveContatoLogic&id=${contato.id}">Remover</a></td>
				</tr>
			</c:forEach>
		</table>
		<c:import url="/jsp/rodape.jsp" />
	</body>
</html>