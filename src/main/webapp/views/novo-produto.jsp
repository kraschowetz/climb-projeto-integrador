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
    <title>Novo Produto</title>
    <link rel="stylesheet" href="../css/novoproduto.css">
</head>
<body>
    <div class="container">
        <div class="header">
            <h1>Novo produto</h1>
            <button class="escape-button">Para sair do modo de ecrã inteiro, prima sem soltar <span>Esc</span></button>
        </div>

        <div class="progress-bar">
            <div class="progress-line"></div>
            <div class="progress-step">1</div>
            <div class="progress-step">2</div>
            <div class="progress-step">3</div>
        </div>

        <form id="productForm">
            <div class="form-container">
                <!-- Seção 1: Informações básicas -->
                <div class="form-section">
                    <div class="form-group">
                        <label>Nome do produto<span class="required">*</span></label>
                        <input type="text" value="Jaqueta Rocket" required>
                    </div>

                    <div class="form-group">
                        <label>Selecione a categoria do produto<span class="required">*</span></label>
                        <select required>
                            <option value="">Indique a categoria</option>
                            <option value="roupas">Roupas</option>
                            <option value="acessorios">Acessórios</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label>Selecione a(s) cor(es) do produto</label>
                        <select>
                            <option value="">Indique uma ou mais cores disponíveis</option>
                            <option value="preto">Preto</option>
                            <option value="branco">Branco</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label>Tamanhos disponíveis</label>
                        <select>
                            <option value="">Indique os tamanhos disponíveis</option>
                            <option value="p">P</option>
                            <option value="m">M</option>
                            <option value="g">G</option>
                        </select>
                    </div>
                </div>

                <!-- Seção 2: Upload de imagens -->
                <div class="form-section">
                    <label>Fotos do produto<span class="required">*</span></label>
                    <div class="image-upload" id="dropZone">
                        <img src="placeholder-image.svg" alt="Upload">
                        <p>arraste as imagens para cá ou clique aqui para fazer o upload</p>
                    </div>
                </div>

                <!-- Seção 3: Descrição e valor -->
                <div class="form-section">
                    <div class="form-group">
                        <label>Descrição do produto<span class="required">*</span></label>
                        <input type="text" value="Jaqueta Rocket modelo punk com tachas prateadas e zíper frontal" required>
                    </div>

                    <div class="form-group">
                        <label>Valor do produto<span class="required">*</span></label>
                        <input type="text" value="R$ 200,00" required>
                    </div>

                    <button type="submit" class="register-button">Cadastrar produto</button>
                </div>
            </div>
        </form>
    </div>

    <footer class="social-footer">
        <p>Entre em contato com a gente!</p>
        <div class="social-icons">
        	<!-- ESSES ICONES NÃO EXISTEM!!1 -->
            <img src="instagram-icon.svg" alt="Instagram">
            <img src="facebook-icon.svg" alt="Facebook">
            <img src="whatsapp-icon.svg" alt="WhatsApp">
        </div>
    </footer>

    <script src="../js/novoproduto.js"></script>
</body>
</html>