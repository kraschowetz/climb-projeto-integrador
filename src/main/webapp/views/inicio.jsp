<%@ page
	language = "java"
	contentType = "text/html"
	pageEncoding = "utf-8"
%>
<!-- talvez deletar esse #include -->
<%@ taglib
	prefix="c" uri="jakarta.tags.core"
%>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Climb - Especiais de Primavera</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/inicio.css"> <!-- por algum motivo isso não funciona -->
    	<!--
    		isso não é saudavel
    		vai deixar a página muito mais pesada.
    		mas é a unica gambiarra q temos para carregar o css
    	-->
    <style>
			<%@ include file="../css/inicio.css" %>
    </style>
</head>
<body>
	<jsp:include page="../includes/climb-header.jsp"></jsp:include>
    <div class="carousel-container">
        <div class="carousel">
            <div class="carousel-slide active">
                <img src="${pageContext.request.contextPath}/res/inicio/inicio2.png" alt="Slide 1">
            </div>
            <div class="carousel-slide">
                <img src="${pageContext.request.contextPath}/res/inicio/inicio3.png" alt="Slide 2">
            </div>
            <div class="carousel-slide">
                <img src="${pageContext.request.contextPath}/res/inicio/inicio4.png" alt="Slide 3">
            </div>
        </div>
        <button class="carousel-button prev" onclick="prevSlide()">❮</button>
        <button class="carousel-button next" onclick="nextSlide()">❯</button>
        <div class="carousel-indicators">
            <div class="indicator active" onclick="currentSlide(0)"></div>
            <div class="indicator" onclick="currentSlide(1)"></div>
            <div class="indicator" onclick="currentSlide(2)"></div>
        </div>
    </div>

   <div class="categories">
    <div class="category-item">
        <div class="category-icon">
            <span role="img" aria-label="Blusas">👜</span>
        </div>
        <span>Blusas</span>
    </div>
    <div class="category-item">
        <div class="category-icon">
            <span role="img" aria-label="Calças">👖</span>
        </div>
        <span>Calças</span>
    </div>
    <div class="category-item">
        <div class="category-icon">
            <span role="img" aria-label="Vestidos">👗</span>
        </div>
        <span>Vestidos</span>
    </div>
    <div class="category-item">
        <div class="category-icon">
            <span role="img" aria-label="Calçados">👟</span>
        </div>
        <span>Calçados</span>
    </div>
    <div class="category-item">
        <div class="category-icon">
            <span role="img" aria-label="Acessórios">👜</span>
        </div>
        <span>Acessórios</span>
    </div>
</div>
   
 <section class="spring-specials">
  <h2>Especiais de primavera</h2>
  <div class="products-grid">
    <div class="product-card">
      <img src="https://http2.mlstatic.com/D_NQ_NP_617649-MLB75577744363_042024-O.webp" alt="Camiseta Básica">
      <div class="product-info">
        <div class="price">
          <span class="original-price">R$39,99</span>
          <span class="sale-price">R$29,99</span>
        </div>
        <a href="entrega.jsp" class="product-button">Camiseta Básica</a>
      </div>
    </div>
    <div class="product-card">
      <img src="https://acdn.mitiendanube.com/stores/001/909/149/products/620286229-6604bfc7691fb6647f16939213928031-640-0.webp" alt="Calça Jeans Skinny">
      <div class="product-info">
        <div class="price">
          <span class="original-price">R$79,99</span>
          <span class="sale-price">R$49,99</span>
        </div>
        <a href="entrega.jsp" class="product-button">Calça Jeans Skinny</a>
      </div>
    </div>
    <div class="product-card">
      <img src="https://onlauri.vteximg.com.br/arquivos/ids/956779-1200-1660/ONC1240105-VERDE-1.jpg?v=638591689253930000" alt="Vestido Floral">
      <div class="product-info">
        <div class="price">
          <span class="original-price">R$89,99</span>
          <span class="sale-price">R$59,99</span>
        </div>
        <a href="entrega.jsp" class="product-button">Vestido Floral</a>
      </div>
    </div>
    <div class="product-card">
      <img src="https://images.tcdn.com.br/img/img_prod/1148194/vestido_midi_muscle_classic_red_162996611_1_44c53a7f9ae642e79f52874036b5a3af.jpg" alt="Vestido Liso">
      <div class="product-info">
        <div class="price">
          <span class="original-price">R$99,99</span>
          <span class="sale-price">R$69,99</span>
        </div>
        <a href="entrega.jsp" class="product-button">Vestido Liso</a>
      </div>
    </div>
    <div class="product-card">
      <img src="https://cordilheira.com.br/cdn/shop/files/FundoProdutos_1_fad60401-970a-4a91-bf9b-100eadcf6c5b.png?v=1690315217&width=600" alt="Short de Verão">
      <div class="product-info">
        <div class="price">
          <span class="original-price">R$59,99</span>
          <span class="sale-price">R$39,99</span>
        </div>
        <a href="views/entrega.jsp" class="product-button">Short de Verão</a>
      </div>
    </div>
  </div>
</section>
 
 
    <div class="cta-section">
        <button class="cta-button">Faça seu pedido</button>
    </div>

    <section class="about-us">
        <div class="about-content">
            <h2>Sobre Nós</h2>
            <p>
                Somos um marketplace independente que nasceu da ideia de unir o talento de ateliês nacionais de alta costura com a ideia da sustentabilidade na reutilização de materiais e peças que entram em desuso depois das temporadas agitadas da moda.
            </p>
            <img src="path-to-sustainability-icon.png" alt="Ícone de Sustentabilidade" class="sustainability-icon">
        </div>
    </section>

    <footer class="footer">
        <p>Entre em contato com a gente!</p>
        <div class="social-media">
            <a href="#"><img src="path-to-instagram-icon.png" alt="Instagram"></a>
            <a href="#"><img src="path-to-facebook-icon.png" alt="Facebook"></a>
            <a href="#"><img src="path-to-whatsapp-icon.png" alt="WhatsApp"></a>
        </div>
    </footer>

    <script>
        document.addEventListener("DOMContentLoaded", function() {
            let currentIndex = 0;
            const slides = document.querySelectorAll('.carousel-slide');
            const indicators = document.querySelectorAll('.indicator');

            function showSlide(index) {
                slides.forEach((slide, i) => {
                    slide.classList.toggle('active', i === index);
                    indicators[i].classList.toggle('active', i === index);
                });
                currentIndex = index;
            }

            function nextSlide() {
                showSlide((currentIndex + 1) % slides.length);
            }

            function prevSlide() {
                showSlide((currentIndex - 1 + slides.length) % slides.length);
            }

            function currentSlide(index) {
                showSlide(index);
            }

            document.querySelector('.next').onclick = nextSlide;
            document.querySelector('.prev').onclick = prevSlide;
            indicators.forEach((indicator, i) => {
                indicator.onclick = () => currentSlide(i);
            });

            setInterval(nextSlide, 5000);  // Troca automática a cada 5 segundos
        });
    </script>
</body>
</html>
