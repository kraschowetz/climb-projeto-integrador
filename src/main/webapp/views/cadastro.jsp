<%@ page
	language = "java"
	contentType = "text/html"
	pageEncoding = "utf-8"
%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Climb - Cadastro</title>
    <link rel="stylesheet" href="../css/cadastro.css">
</head>
<body>
	<jsp:include page="../includes/climb-header.jsp"></jsp:include>

    <div class="container">
        <section class="form-section">
            <div class="form-container">
                <h1>Cadastro</h1>
                <form id="registerForm" novalidate>
                    <div class="form-group">
                        <label for="fullName">Nome completo</label>
                        <input type="text" id="fullName" name="fullName" required>
                        <span class="error-message" id="fullNameError">Campo obrigatÃ³rio</span>
                    </div>

                    <div class="form-group">
                        <label for="birthDate">Data de nascimento</label>
                        <input type="text" id="birthDate" name="birthDate" placeholder="DD/MM/AAAA" required>
                        <span class="error-message" id="birthDateError">Data invÃ¡lida</span>
                    </div>

                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="email" id="email" name="email" required>
                        <span class="error-message" id="emailError">Email invÃ¡lido</span>
                    </div>

                    <div class="form-group">
                        <label for="password">Senha</label>
                        <input type="password" id="password" name="password" minlength="6" required>
                        <span class="error-message" id="passwordError">Senha deve ter pelo menos 6 caracteres</span>
                    </div>

                    <button type="submit">Cadastrar</button>
                </form>
            </div>
        </section>
        <section class="image-section">
            <img src="" alt="Imagem decorativa de login" class="decorative-image">
        </section>
    </div>

    <footer class="footer">
        <p>Entre em contato com a gente!</p>
    </footer>

    <script src="../js/cadastro.js"></script>
</body>
</html>
