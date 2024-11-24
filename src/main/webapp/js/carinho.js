// Classe para gerenciar o carrinho de compras
class ShoppingCart {
    constructor() {
        this.initializeCart();
        this.setupEventListeners();
    }

    initializeCart() {
        // Seleciona todos os itens do carrinho
        this.cartItems = document.querySelectorAll('.product-item');
        
        // Inicializa os preços unitários e totais
        this.cartItems.forEach(item => {
            const quantityInput = item.querySelector('.quantity-input');
            const unitPrice = this.getPriceValue(item.querySelectorAll('.price')[0]);
            
            // Armazena o preço unitário como um atributo de dados
            item.dataset.unitPrice = unitPrice;
            
            // Atualiza o preço total inicial
            this.updateTotalPrice(item, parseInt(quantityInput.value));
        });
    }

    setupEventListeners() {
        this.cartItems.forEach(item => {
            const minusBtn = item.querySelector('.quantity-btn:first-child');
            const plusBtn = item.querySelector('.quantity-btn:last-child');
            const quantityInput = item.querySelector('.quantity-input');
            const selectionCircle = item.querySelector('.selection-circle');

            // Eventos para os botões de quantidade
            minusBtn.addEventListener('click', () => this.updateQuantity(item, -1));
            plusBtn.addEventListener('click', () => this.updateQuantity(item, 1));
            
            // Evento para input manual de quantidade
            quantityInput.addEventListener('change', () => {
                let value = parseInt(quantityInput.value) || 0;
                value = Math.max(0, value); // Previne números negativos
                quantityInput.value = value;
                this.updateTotalPrice(item, value);
            });

            // Evento para seleção do item
            selectionCircle.addEventListener('click', () => {
                selectionCircle.classList.toggle('selected');
            });
        });
    }

    updateQuantity(item, change) {
        const quantityInput = item.querySelector('.quantity-input');
        let newQuantity = parseInt(quantityInput.value) + change;
        
        // Previne quantidade negativa
        newQuantity = Math.max(0, newQuantity);
        
        quantityInput.value = newQuantity;
        this.updateTotalPrice(item, newQuantity);
    }

    updateTotalPrice(item, quantity) {
        const unitPrice = parseFloat(item.dataset.unitPrice);
        const totalPriceElement = item.querySelectorAll('.price')[1];
        const totalPrice = (unitPrice * quantity).toFixed(2);
        
        totalPriceElement.textContent = `R$${totalPrice.replace('.', ',')}`;
        
        this.updateCartTotal();
    }

    updateCartTotal() {
        let total = 0;
        
        this.cartItems.forEach(item => {
            const quantity = parseInt(item.querySelector('.quantity-input').value);
            const unitPrice = parseFloat(item.dataset.unitPrice);
            total += quantity * unitPrice;
        });

        // Se existir um elemento para o total do carrinho, atualiza ele
        const cartTotal = document.getElementById('cart-total');
        if (cartTotal) {
            cartTotal.textContent = `R$${total.toFixed(2).replace('.', ',')}`;
        }
    }

    getPriceValue(priceElement) {
        // Extrai o valor numérico do preço (remove R$ e converte vírgula para ponto)
        return parseFloat(priceElement.textContent.replace('R$', '').replace(',', '.'));
    }
}

// Inicializa o carrinho quando o DOM estiver completamente carregado
document.addEventListener('DOMContentLoaded', () => {
    const cart = new ShoppingCart();
});