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
    <title>Catálogo</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/catalago.css">
</head>
<body>
	<jsp:include page="../includes/climb-header.jsp"></jsp:include>

    <main class="main-content">
        <div class="header">
            <h1>Catálogo</h1>
            <div class="actions">
                <a href="novoproduto.html" class="btn-novo">+ Novo Produto</a>
            </div>
        </div>

        <div class="products-grid">
            <div class="product-card">
                <div class="product-title">
                    <span>Camiseta Básica</span>
                    <span>?</span>
                </div>
                <img src="https://thumb.braavo.me/lawe/0/424789716.webp" alt="Camiseta BÃ¡sica" class="product-image">
                <div class="product-price">R$39,99</div>
            </div>

            <div class="product-card">
                <div class="product-title">
                    <span>Vestido Alta Costura</span>
                    <span>?</span>
                </div>
                <img src="https://brooksfielddonna.vtexassets.com/arquivos/ids/201625/NTFNFS001RI_15930_1-CINTO-MADU.jpg?v=638482702863700000" alt="Vestido Alta Costura" class="product-image">
                <div class="product-price">R$399,89</div>
            </div>

            <div class="product-card">
                <div class="product-title">
                    <span>Conjunto Esportivo</span>
                    <span>?</span>
                </div>
                <img src="https://images.tcdn.com.br/img/img_prod/912844/legging_training_fem_jeep_commander_verde_preta_3041_1_26b20828a722a9e397739e4303f09471.jpg" alt="Conjunto Esportivo" class="product-image">
                <div class="product-price">R$59,99</div>
            </div>

            <div class="product-card">
                <div class="product-title">
                    <span>Moletom Básico</span>
                    <span>?</span>
                </div>
                <img src="https://m.media-amazon.com/images/I/51nvr5bY8VL._AC_SY500_.jpg" alt="Moletom BÃ¡sico" class="product-image">
                <div class="product-price">R$49,99</div>
            </div>
        </div>

        <div class="pagination">
            <a href="#">próxima Página</a>
        </div>
    </main>

    <footer>
        Entre em contato com a gente!
    </footer>
</body>
</html>