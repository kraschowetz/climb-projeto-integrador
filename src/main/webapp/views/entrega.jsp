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
    <title>Checkout - Climb</title>
    <link rel="stylesheet" href="../css/entrega.css">
</head>
<body>
    <div class="fullscreen-message">
        Para sair do modo tela cheia aperte esc <!-- pra que modo tela cheia? -->
    </div>

    <header class="header">
        <div class="logo">climb</div>
        <div class="header-right">
            <a href="#" class="cart-icon">🛒</a>
            <span>Caixa</span>
            <a href="#" class="user-icon">👤 Cliente</a>
        </div>
    </header>

    <div class="container">
        <section class="delivery-address">
            <div class="address-info">
                <span>👤</span>
                <div>
                    <h3>Endereço de Entrega:</h3>
                    <div class="cep-input">
                        <label for="cep">CEP:</label>
                        <input type="text" id="cep" placeholder="00000-000" pattern="\d{5}-\d{3}" maxlength="9" required>
                        <button class="search-cep">Buscar CEP</button>
                    </div>
                    <p>Nome do Destinatário, Rua, Número, Complemento, Bairro, Cidade, Estado, CEP</p>
                </div>
            </div>
            <button class="change-button">Trocar</button>
        </section>

        <section class="products">
            <div class="product-header">
                <span>Produtos Pedidos:</span>
                <span>Preço Unitário</span>
                <span>Quantidade</span>
                <span>Preço Total</span>
            </div>
            <div class="product-item">
                <div style="display: flex; align-items: center;">
                    <div class="product-image"></div>
                    <span>Nome do Produto</span>
                </div>
                <span>R$300,00</span>
                <div class="quantity-control">
                    <button class="quantity-button">-</button>
                    <span>2</span>
                    <button class="quantity-button">+</button>
                </div>
                <span>R$600,00</span>
            </div>
        </section>

        <section class="payment-methods">
            <h3>Método de Pagamento:</h3>
            <div class="payment-options">
                <button class="payment-button active">PIX</button>
                <button class="payment-button credit">Cartão de Débito/Crédito</button>
                <button class="payment-button">Boleto</button>
            </div>
            <div class="card-form">
                <input type="text" placeholder="Nome do Titular:">
                <input type="text" placeholder="Mês:">
                <input type="text" placeholder="Ano:">
            </div>
        </section>
    </div>

    <script src="../js/entrega.js"></script>
</body>
</html>