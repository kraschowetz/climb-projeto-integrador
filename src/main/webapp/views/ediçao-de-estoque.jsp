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
    <title>Edição de Produto - Climb</title>
    <link rel="stylesheet" href="../css/ediçaodeestoque.css">
</head>
<body>
    <nav class="navbar">
        <div class="logo">climb</div>
        <div class="nav-links">
            <a href="inicio.html">Início</a>
            <a href="catalago.html">Catálogo</a>
            <a href="login.html">Logout</a>
            <div class="admin-icon">
                <span>👤</span>
                <span>Administrador</span>
            </div>
        </div>
    </nav>

    <main class="main-content">
        <div class="breadcrumb">
            <a href="#">Manutenção de produtos</a> > Edição de produto
        </div>

        <h1 class="edit-title">Edição de estoque</h1>

        <div class="progress-bar">
            <div class="progress-step">1</div>
            <div class="progress-step">2</div>
            <div class="progress-step">3</div>
        </div>

        <form>
            <div class="form-grid">
                <div>
                    <div class="form-group">
                        <label>Nome do produto*</label>
                        <input type="text" class="form-control" value="Jaqueta Rocket">
                    </div>

                    <div class="form-group">
                        <label>Selecione a categoria do produto*</label>
                        <select class="form-control">
                            <option>indique a categoria</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label>Selecione a(s) cor(es) do produto</label>
                        <select class="form-control">
                            <option>indique uma ou mais cores disponíveis</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label>Tamanhos disponíveis</label>
                        <select class="form-control">
                            <option>indique os tamanhos disponíveis</option>
                        </select>
                    </div>
                </div>

                <div>
                    <div class="form-group">
                        <label>Fotos do produto*</label>
                        <div class="image-upload">
                            arraste as imagens para cá ou clique aqui para fazer o upload
                        </div>
                    </div>
                </div>

                <div>
                    <div class="form-group">
                        <label>Descrição do produto*</label>
                        <textarea class="form-control" rows="8">Jaqueta Rocket modelo punk com tachas prateadas e zíper frontal</textarea>
                    </div>

                    <div class="form-group">
                        <label>Valor do produto*</label>
                        <input type="text" class="form-control" value="R$ 200,00">
                    </div>

                    <button type="submit" class="save-btn">Salvar</button>
                </div>
            </div>
        </form>

        <p class="required">*campos de preenchimento obrigatório</p>
    </main>
</body>
</html>