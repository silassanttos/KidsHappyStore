<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="br.com.kidshppystore.bean.Produto"%>
<%@ page import="br.com.kidshppystore.bean.Categoria"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
			<title>Kids Happy Store</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<meta name="author" content="">
		
		<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
		<link href="css/bootstrap.css" rel="stylesheet" media="screen">
		<link href="css/bootstrap-responsive.min.css" rel="stylesheet"media="screen">
		<link href="css/bootstrap-responsive.css" rel="stylesheet"media="screen">
		<link href="js/bootstrap.js" rel="javascript" media="screen">
		<link href="js/bootstrap.min.js" rel="javascript" media="screen">
		<link rel="shortcut icon" href="icon/icon_head.jpeg" type="image/x-icon">
	<style type="text/css">
	body {
		padding-top: 60px;
	}
	

	.sidebar-nav {
		padding: 9px 0;
	}
	
	@media ( max-width : 980px) { /* Enable use of floated navbar text */
		.navbar-text.pull-right {
			float: none;
			padding-left: 5px;
			padding-right: 5px;
		}
	}
	
	.btnset {
		font-family: sans-serif;
		border: none;
		padding: 1px 30px;
		font-size: 20px;
		outline: none;
		-webkit-transition-duration: 1s;
		transition-duration: 1s;
		background-color: rgb(23, 52, 89);
		color: white;
		box-shadow: .4px, 4px 1px 2px #000000;
		
	}
	
	.btnset:hover {
		background-color: transparent;
		color: rgb(23, 52, 89);
		box-shadow: 1px 1px 2px 3px #000000;
		cursor: pointer;
	}
	

	
	
	     footer{
	      	background: rgb(0, 0, 0);
	      	position: absolute;
	      	width: 100%;
	      	height: 40px;
	      	margin: auto;
	      	bottom: 0;
	      	
	      	/*
	      		background-color: coral;
				height: 50px;
				text-align: center;
				padding: 30px;
				margin-top: 80px;*/
			}
			.foot{
			color: rgb(132, 174, 246);
			padding: 10px;
			text-align: center;
			}
			
			
			
			
		
		.integrantesImag{
			width: 500px;
			height: 500px;}

			
			
			.integrantesImag {
			    -webkit-transition: all 1s ease; /* Safari and Chrome */
			    -moz-transition: all 1s ease; /* Firefox */
			    -ms-transition: all 1s ease; /* IE 9 */
			    -o-transition: all 1s ease; /* Opera */
			    transition: all 1s ease;
			}
			.integrantesImag:hover {
			    -webkit-transform:scale(1.25); /* Safari and Chrome */
			    -moz-transform:scale(1.25); /* Firefox */
			    -ms-transform:scale(1.25); /* IE 9 */
			    -o-transform:scale(1.25); /* Opera */
			     transform:scale(1.25);
			}
			
			
			
			body::-webkit-scrollbar {
			  width: 12px;           /* largura de toda a barra de rolagem*/
			}
			
			body::-webkit-scrollbar-track {
			  background: black;        /* cor da área de rastreamento */
			  background-image: linear-gradient(to bottom, #56237c, #111111);
			  
			}
			
			body::-webkit-scrollbar-thumb {
			  background-color: orange;    /* cor do polegar de rolagem */
			  border-radius: 20px;       /* arredondamento do polegar de rolagem */
			  border: 3px  blue; 	/* cria preenchimento ao redor do polegar de rolagem */
			   
			}
	</style>
	

	</head>

	<body>
			<style>
		.row-fluid {
			display: flex;
			justify-content: space-around;
			border-radius: 10px;
			padding: 50px 0px;
			background-color: #f3f3f3;
		}
		
		.row-fluid .span9 {
			width: 40%;
			text-align: justify;
		}
		</style>

	<div class="navbar navbar-inverse navbar-fixed-top style="background-color:#C9F0FF;">
		<div class="navbar-inner" style="height: 90px; background-image: linear-gradient(to bottom, #56237c, #111111);">
			<div class="container-fluid">

				<a href="index.jsp"><img src="logo/logo_.png"
					style="width: 90px; background-image: linear-gradient(to bottom, #56237c, #111111);"></a>
				<span style="font-size: 40px; color: #8582D8;"> Kids Happy
					Store</span>

				<c:if test="${not empty username}">
					<p class="navbar-text pull-right" style="margin: 0px;">
						Olá ${username}! | <a href="ServletLogin?cmd=logout">Sair</a>
					</p>
				</c:if>

				<c:if test="${empty username}">
					<p class="navbar-text pull-right btn btn btn-warning" style="padding-top: 0px;">
						<a href="login.jsp" style="text-decoration: none;">Fazer Login</a>
					</p>
				</c:if>
			</div>
		</div>
	</div>
	<!--/.navbar -->

	<jsp:useBean id="produto" scope="session"
		class="br.com.kidshppystore.bean.Produto" />
		
	<jsp:useBean id="categoria" scope="session"
		class="br.com.kidshppystore.bean.Categoria" />

	<div class="container-fluid" style="padding-top: 15px;">

		<div class="row-fluid">
			<div class="span3">
				<div>
					<center>
						<h3><%=produto.getNomeProduto()%></h3>
						<br />
						<p class="integrantesImag">
							<img src="<%=produto.getImgProduto()%>" style="width: 300px;">
						</p>
					</center> 
				</div>
				<!--/.well -->
			</div> 
			<!--/span-->


			<div class="span9">
				<div class="container-fluid">
					<div>
						<br>
						<table
							style="border-collapse: separate; border-spacing: 0 20px; margin-top: -8px;">
							<tr>
								<td style="font-weight: bold;">ID:</td>
								<td style="font-size: 15px;"><%=produto.getIdProduto()%></td>
							</tr>
							<tr>
								<td style="font-weight: bold;">Produto:</td>
								<td><%=produto.getNomeProduto()%></td>
							</tr>
							<tr>
								<td style="font-weight: bold;">Preço:</td>
								<td style="font-weight: bold; font-size: 25px;" class="text-warning">R$: <%=produto.getPrecoUnitario()%>0</td>
							</tr>

							<tr>
								<td style="font-weight: bold;">Categoria:</td>
								<td><%=produto.getIdCategoria()%></td>
								
							</tr>

							
						</table>

						<h5>Descrição:</h5>
						<p><%=produto.getDescricao()%></p>
						<br />

						<p>
							<a class="btnset" href="http://localhost:8080/KidsHappyStore/index.jsp" style="text-decoration: none;"> &laquo; Voltar</a>
						</p>

					</div>
				</div>
			</div>

			<hr>

		</div>

		<footer class="footer navbar-fixed-bottom">
			<p class="foot">&copy; Copyright 2021</p>
		</footer>
</body>
</html>