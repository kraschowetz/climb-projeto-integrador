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
    <title>Carrinho de Compras - Climb</title>
    <link rel="stylesheet" href="../css/carrinho.css"> 
</head>
<body>
    <header class="header">
        <div class="logo">climb</div>
        <div class="cart-title">Carrinho de Compras</div>
        <div class="user-section">
            <div>🛒</div>
            <div>👤 Cliente</div>
        </div>
    </header>

    <main class="cart-container">
        <div class="products-header">
            <div>Produtos</div>
            <div>Preço Unitário</div>
            <div>Quantidade</div>
            <div>Preço Total</div>
        </div>

        <div class="product-item">
            <div class="product-info">
                <div class="selection-circle"></div>
                <div class="product-image">Imagem do produto aqui</div>
                <div>Nome do Produto*</div>
            </div>
            <div class="price">R$100,00</div>
            <div class="quantity-control">
                <button class="quantity-btn">-</button>
                <input type="text" class="quantity-input" value="1">
                <button class="quantity-btn">+</button>
            </div>
            <div class="price">R$100,00</div>
        </div>

        <div class="product-item">
            <div class="product-info">
                <div class="selection-circle"></div>
                <div class="product-image">Imagem do produto aqui</div>
                <div>Nome do Produto*</div>
            </div>
            <div class="price">R$200,00</div>
            <div class="quantity-control">
                <button class="quantity-btn">-</button>
                <input type="text" class="quantity-input" value="1">
                <button class="quantity-btn">+</button>
            </div>
            <div class="price">R$200,00</div>
        </div>

        <div class="product-item">
            <div class="product-info">
                <div class="selection-circle selected"></div>
                <div class="product-image">Imagem do produto aqui</div>
                <div>Nome do Produto*</div>
            </div>
            <div class="price">R$300,00</div>
            <div class="quantity-control">
                <button class="quantity-btn">-</button>
                <input type="text" class="quantity-input" value="2">
                <button class="quantity-btn">+</button>
            </div>
            <div class="price">R$600,00</div>
        </div>

        <div class="cart-summary">
            <div class="cart-total">
                Total do Carrinho: <span id="cart-total">R$900,00</span>
            </div>
        </div>
    </main>

    <script src="../js/carinho.js"></script>
</body>
</html>