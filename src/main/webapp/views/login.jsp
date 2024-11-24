<%@ page
	language = "java"
	contentType = "text/html"
	pageEncoding = "utf-8"
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Climb - Login</title>
    <link rel="stylesheet" type="text/css" href="../css/login.css">
</head>
<body>
	<jsp:include page="../includes/climb-header.jsp"></jsp:include>
    <div class="container">
        <div class="login-form">
            <h1>Login</h1>
            <form action="LoginServlet" method="post">
                <div class="form-group">
                    <label for="email">email</label>
                    <input type="email" id="email" name="email" placeholder="exemplo@gmail.com" required>
                </div>

                <div class="form-group">
                    <label for="senha">senha</label>
                    <input type="password" id="senha" name="senha" placeholder="suaSenha123" required>
                </div>

                <div class="forgot-password">
                    <a href="#">esqueci minha senha</a>
                </div>

                <div class="button-group">
                    <a href="../views/cadastro.jsp" class="btn btn-register">Cadastre-se</a>
                    <a href="inicio.html" class="btn btn-register">Entrar</a> <!-- usar valicacao aq -->
                </div>
            </form>
        </div>
        <div class="image-section">
            <img src="../res/login.png" alt="Loja de roupas"> 
        </div>
    </div>
    <script src="../js/login.js"></script>
</body>
</html>

