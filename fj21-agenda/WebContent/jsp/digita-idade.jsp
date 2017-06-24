<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
		<style>
			* {
			margin: 0;
			padding: 0;
			font-family: Arial;
			}
			
			h1 {
				text-align: center;
				margin: 50px 0 50px 0;
			}
			
			.form {
				display: flex;
				flex-direction:column;
				width:300px;
				margin: 50px auto;
				background-color: #F7F7F7;
				padding: 20px 20px 30px 20px;
			}
			
			.text {
				margin: 3px 0;
				line-height:20px;
			}
			
			.input {
				padding:2px 5px;
				margin: 3px 0 15px 0;
			}
			
			.button {
				width: 80%;
				height:40px;
				margin: 20px auto 0 auto;
				border-radius: 5px;
				border: 0px;
				background-color: #4286f4;
				font-size: 16px;
			}
			
			.button:hover {
				background-color: #7eacf7;
			}
		</style>
	</head>
	<body>
		<form action="mostra-idade.jsp" class="form">
			<label for="idade" class="text">Idade:</label>
			<input type="text" name="idade" class="text input"/>
			<input type="submit" value="Gravar" class="button"/>
		</form>
	</body>
</html>