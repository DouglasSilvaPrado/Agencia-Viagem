<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Editar Viagem</title>
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
            
          </ul>
          
        </div>
      </div>
    </nav>
    
    <!-- main -->
    <div class="container" align="center">
		<h1>Editar Viagem</h1>
		<form name="frmContato" action="update">
			<table>
				<tr>
					<td><input type="text" name="idcon" id="caixa3" readonly value="<%out.print(request.getAttribute("idcon"));%>"></td>
				</tr>
	
				<tr>
					<td><input type="text" id="origem" name="origem" class="Caixa1" required  value="<%out.print(request.getAttribute("origem"));%>"></td>
				</tr>
				<tr>
					<td><input type="text" d="destino" name="destino" class="Caixa1"  value="<%out.print(request.getAttribute("destino"));%>"></td>
				</tr>
				<tr>
					<td><input type="date" name="data_ida" class="Caixa1" required  value="<%out.print(request.getAttribute("data_ida"));%>"></td>
				</tr>
				<tr>
					<td><input type="date" name="data_volta" class="Caixa1" required  value="<%out.print(request.getAttribute("data_volta"));%>"></td>
				</tr>
				
	
			</table>
			<input type="button" value="Salvar" class="Botao1" onclick="validar()">
		</form>
	</div>
	
	<!-- footer -->
    <footer class="text-center text-lg-start mt-4 fixed-bottom">
      <div
        class="text-center primary-bg-color p-3"
        style="background-color: #607080"
      >
        Agencia de Viagem © 2021
      </div>
    </footer>
	
	<script src="scripts/validador.js"></script>
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