<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="br.com.kidshppystore.bean.Usuario"%>
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
		<link href="css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
		<link href="css/bootstrap-responsive.css" rel="stylesheet" media="screen">
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

		
	      	tr:nth-child(even) {background-color: #f2f2f2;}
	      	
	      	
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
		
		<div class="navbar navbar-inverse navbar-fixed-top" style="background-color: #C9F0FF;">
	      <div class="navbar-inner" style="height: 90px; background-image: linear-gradient(to bottom, #56237c, #111111);">
	        <div class="container-fluid">
  	          
  	          <a href="index.jsp"><img src="logo/logo_.png" style="width: 90px;"></a>
	          
              <span style="font-size: 40px; color: #8582D8;">Kids Happy Store</span>

	          	<c:if test= "${not empty username}">
            		<p class="navbar-text pull-right" style="margin: 0px;">					
						Olá ${username}!  |  <a href="ServletLogin?cmd=logout">Sair</a>
	            	</p>
        		</c:if>

		        <c:if test= "${empty username}">
		            <p class="navbar-text pull-right" style="padding-top: 20px;">					
						<a href="login.jsp">Fazer Login</a>
	            	</p>
		        </c:if>
		        
	        </div><!--/.container-fluid -->
	      </div><!--/.navbar-inner -->
	    </div><!--/.navbar -->
	
	    <div class="container-fluid" style="padding-top: 50px;">
	      
	      <div class="row-fluid">
	        <div class="span3">
	          <div class="well sidebar-nav">
	            <ul class="nav nav-list">
	              <li class="nav-header">Categorias</li>
	      <li><a href="http://localhost:8080/KidsHappyStore/ServletProduto?cmd=listar">Todas</a></li>
	             <li><a href="http://localhost:8080/KidsHappyStore/ServletProduto?cmd=listarCategoria&idCategoria=349">Bonecas</a></li>
	              <li><a href="http://localhost:8080/KidsHappyStore/ServletProduto?cmd=listarCategoria&idCategoria=350">Caminhões</a></li>
	              <li><a href="http://localhost:8080/KidsHappyStore/ServletProduto?cmd=listarCategoria&idCategoria=351">Cozinhas</a></li>
	              <li><a href="http://localhost:8080/KidsHappyStore/ServletProduto?cmd=listarCategoria&idCategoria=352">Helicopteros</a></li>
	              <li><a href="http://localhost:8080/KidsHappyStore/ServletProduto?cmd=listarCategoria&idCategoria=353">Jogos</a></li>
	              <li><a href="http://localhost:8080/KidsHappyStore/ServletProduto?cmd=listarCategoria&idCategoria=354">Motos</a></li>
	              <li><a href="http://localhost:8080/KidsHappyStore/ServletProduto?cmd=listarCategoria&idCategoria=355">Praia</a></li>
	              <li><a href="http://localhost:8080/KidsHappyStore/ServletProduto?cmd=listarCategoria&idCategoria=356">Tratores</a></li>
	              <br />
	              
	              <c:if test= "${not empty username}">
            		<li class="nav-header">Área Administrativa</li>
	              	<li><a href="ServletCategoria?cmd=mostrar">Listar Categorias</a></li>
	              	<li><a href="ServletProduto?cmd=mostrar">Listar Produtos</a></li>
	              	<li><a href="ServletUsuario?cmd=mostrar">Listar Usuários</a></li>
        		  </c:if>
        		  	              
	            </ul>
	          </div><!--/.well -->
	        </div><!--/span-->

	        <div class="span9">
	         <div class="container-fluid">	
				
				<c:if test= "${not empty username}">
	          		
	          		<center>
						<table width="100%" border="1" cellpadding="2" cellspacing="0" class="table table-bordered">
						<thead class="thead-dark">
							<tr style="border-botton: none;">
								<th colspan="6" style="back: 20px; text-align: center;"><h3>Lista de Usuários</h3></th>
							</tr>
							<thead/>
							<tr>
								<th colspan="6" style="text-align: right;">
									<a href="cadUsuario.jsp"><img src="icon/novo_.png" style="width: 20px;"> Adicionar Novo </a>
								</th>
							</tr>
								
							<tr>
								<th>ID</th>
								<th>Nome do Usuário</th>
								<th>Username</th>
								<th>Senha</th>
								<th>Alterar</th>
								<th>Excluir</th>
							</tr>
							<%
								List<Usuario> lista = new ArrayList<Usuario>();
								lista = (ArrayList) request.getAttribute("usuarioList");
								for (Usuario u : lista) {
							%>
							<tr>
								<td><%=u.getIdUsuario()%></td>
								<td><%=u.getNome()%></td>
								<td><%=u.getUsername()%></td>
								<td><%=u.getSenha()%></td>
								<td style="text-align: center;"><a href="ServletUsuario?cmd=atu&id=<%=u.getIdUsuario()%>"><img src="icon/edit.png" style="width: 20px; position: center;"></a></td>
								<td style="text-align: center;"><a href="ServletUsuario?cmd=exc&id=<%=u.getIdUsuario()%>"><img src="icon/excluir_.png" style="width: 20px;"></a></td>
							</tr>
							<% 
								}
							%>				
						</table>
					</center>
	          		
	          	</c:if>
	          		          
	        </div><!--/span-->
	      </div>
	
	      <hr>
	
	    </div>

		<footer class="footer navbar-fixed-bottom">
	        <p class="foot">&copy; Copyright 2021</p>
	    </footer>
	    
	</body>
</html>