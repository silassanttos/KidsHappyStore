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
	      	
			}
			.foot{
			color: rgb(132, 174, 246);
			padding: 10px;
			text-align: center;
			}
			
			
			.integrantesImag{
			width: 170px;
			height: 170px;}

			
			
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
			text-align: center;
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
			<div class="span9">
				<div class="container-fluid">
						<table class="table table-hover">
							  <thead>
							    <tr >
							      <th  colspan="5" style="text-align: center;"> <h3>Integrantes👨‍💻</h3></th>
							    </tr>
							  </thead>
							  <tfoot>
									<tr><td colspan="5">
										</td>
									</tr>
							</tfoot>
							  
							  <tbody>
							    <tr >
						      	<td class="integrantesImag" ><img  src="imgIntegrantes/diego.jpg"></td>
							      <td colspan="3"  width="1000"><b>Diego Justino Amaral de Souza</b></td>
							      <td colspan="3"  >RGM:24721930</td>
							    </tr >
							     <tr>
							      <td class="integrantesImag" ><img src="imgIntegrantes/gustavo.jpg"></td>
							      <td colspan="3" width="500"><b>Gustavo De Souza Vicente</b></td>
							      <td >RGM:22681483</td>
							    </tr >
							    <tr >
							      <td  class="integrantesImag" ><img src="imgIntegrantes/renan.jpg"></td>
							      <td colspan="3"  width="500"><b>Renan Soares da Silva</b></td>
							      <td >RGM:23131055</td>
							    </tr>
							    <tr>
							      <td class="integrantesImag" > <img src="imgIntegrantes/silas.jpg"></td>
							      <td colspan="3"  width="500"><b>Silas Dos Santos Sousa</b></td>
							      <td>RGM:23130156</td>
							    </tr>
							   
							
							  </tbody>
							</table>

						<a class="btnset" href="http://localhost:8080/KidsHappyStore/index.jsp" style="text-decoration: none; text-align: center;"> &laquo; Voltar</a>
						<br/>
				</div>
			</div>
			<hr>
		</div>
		<footer class="footer navbar-fixed-bottom">
			<p class="foot">&copy; Copyright 2021</p>
		</footer>
</body>
</html>