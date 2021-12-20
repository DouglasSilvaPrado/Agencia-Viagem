<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="model.Pessoa"%>
<%@ page import="java.util.ArrayList"%>
<%
	ArrayList<Pessoa> lista = (ArrayList<Pessoa>) request.getAttribute("pessoas");
%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<title>Pessoas</title>
<!-- Bootstrap CSS v5.0.2 -->
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous"
    />
<link rel="stylesheet" href="style.css">
</head>
<body>
	<!-- menu -->
    <nav class="navbar navbar-expand-lg navbar-dark btn-primary">
      <div class="container-fluid">
        <a class="navbar-brand" href="index.html">Agencia</a>
        <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="index.html">Home</a>
            </li>
             <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="Destino.html">Destino</a>
            </li>
            
          </ul>
          
        </div>
      </div>
    </nav>
	
	<!-- main -->
	<div class="container" align="center">
		<h1>Pessoas</h1>
		<a href="novaPessoa.html" class="btn btn-primary mb-5">Nova Pessoa</a>
		
		<table id="tabela" class="table">
			<thead>
				<tr>
					<th scope="col">Id</th>
					<th scope="col">Nome</th>
					<th scope="col">CPF</th>
					<th scope="col">Telefone</th>
					<th scope="col">Opções</th>
				</tr>
			</thead>
			<tbody>
				<%
					for (int i = 0; i < lista.size(); i++) {
				%>
				<tr>
					<td><%=lista.get(i).getIdcon()%></td>
					<td><%=lista.get(i).getNome()%></td>
					<td><%=lista.get(i).getCpf()%></td>
					<td><%=lista.get(i).getTelefone()%></td>
					<td>
						<a href="selectPessoa?idcon=<%=lista.get(i).getIdcon() %>" class="btn Botao1 m-2">Editar</a>
						<a href="javascript: confirmar2(<%=lista.get(i).getIdcon() %>)" class="btn Botao2 m-2">Excluir</a>
					</td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
	</div>
	 <!-- footer -->
    <footer class="text-center text-lg-start mt-5 fixed-bottom">
      <div
        class="text-center primary-bg-color p-3"
        style="background-color: #607080"
      >
        Agencia de Viagem © 2021
      </div>
    </footer>
    <script src="scripts/confirmador.js"></script>
	<!-- Bootstrap JavaScript Libraries -->
    <script
      src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
      integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
      crossorigin="anonymous"
    ></script>
    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
      integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
      crossorigin="anonymous"
    ></script>
</body>
</html>