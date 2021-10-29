<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="icon/icon_head.jpeg" type="image/x-icon">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>



<script type="text/javascript">
	function validarLogin() {
		if (document.formLogin.username.value == "") {
			swal("Usuário não informado. Tente novamente");
			return false;
		}
		if (document.formLogin.senha.value == "") {
			swal("Senha não informada. Tente novamente");
			return false;
		}
		document.formLogin.submit();
	}
</script>

<meta charset="UTF-8">
<title>Kids Happy Store</title>
</head>
<body>
	<style>
	* {
  			padding:0;
 			margin:0;
			}
	
		form{
		    width: 80%;
		    margin: 0 auto;
		    border-radius: 10px;
		    height: 90px;
		   	padding: 90px 40px;
		    text-align: center;
		    font-size: 20px;
		    border: 1px solid #ccc;
		    background-color: #cccccc30;
		}
		

		body{
		background-image:url(Fundo/fundo_login.jpeg);  /* url */
		display: table;
  		width: 99%;
  		height: 50vh;
  		padding: 100px 0;
  		color: white;
  		background-position: 30% 45%;
  		background-size: cover;
		
		}
		.btn {
			font-family: sans-serif;
			border: none;
		    padding: 10px 20px;
		    font-size: 18px;
		    background: transparent;
		    color: white;
		    background: blue;
		    border-radius: 8px;
		    text-decoration: none;
		    box-shadow: 0 0 0 0;
		   
		    outline: 0;
		    padding: 6px;
		    
		}
		.btn:hover{
		color: white;
		background: green;
		}
		
		.us{
			outline: none;
			padding: 10px;
			border: none;
			border-bottom: 2px solid #0076ff;
			border-radius: 10px;
			margin: 5px;
		}
		form a {
		    text-decoration: none;
		    color: #000;
		    cursor: pointer;
		   
		}
		form input[type="submit"]{
			cursor:pointer;
		}
		

	</style>
	<form action="ServletLogin?cmd=logar" method="post" name="formLogin">
		<input type="text" name="username" placeholder="Usuário" class="us" required><br>
		<input type="password" name="senha" placeholder="Senha" class="us"  required><br> 
		<input type="submit" value="Entrar" class="btn" onclick="validarLogin()"> 
		<a href="index.jsp" ><img border="0" alt="W3Schools" src="icon/ico_login.png" width="20" height="20">Voltar</a>
		<div>
		<h3>${message}</h3>
		</div>
	</form>

</body>
</html>



