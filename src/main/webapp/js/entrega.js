// Código anterior mantido
const quantityButtons = document.querySelectorAll('.quantity-button');
const quantityDisplay = document.querySelector('.quantity-control span');
let quantity = 2;

quantityButtons.forEach(button => {
    button.addEventListener('click', () => {
        if (button.textContent === '+' && quantity < 99) {
            quantity++;
        } else if (button.textContent === '-' && quantity > 1) {
            quantity--;
        }
        quantityDisplay.textContent = quantity;
        updateTotal();
    });
});

function updateTotal() {
    const unitPrice = 300;
    const totalElement = document.querySelector('.product-item span:last-child');
    totalElement.textContent = `R$${(unitPrice * quantity).toFixed(2)}`;
}

const paymentButtons = document.querySelectorAll('.payment-button');
paymentButtons.forEach(button => {
    button.addEventListener('click', () => {
        paymentButtons.forEach(btn => btn.classList.remove('active'));
        if (!button.classList.contains('credit')) {
            button.classList.add('active');
        }
    });
});

// Integração ViaCEP
const cepInput = document.getElementById('cep');
const ruaInput = document.getElementById('rua');
const bairroInput = document.getElementById('bairro');
const cidadeInput = document.getElementById('cidade');
const estadoInput = document.getElementById('estado');

cepInput.addEventListener('blur', () => {
    // Remove todos os caracteres não numéricos
    const cep = cepInput.value.replace(/\D/g, '');
    
    if (cep.length !== 8) {
        alert('CEP inválido. Digite um CEP com 8 números.');
        return;
    }

    // Mostra loader (opcional)
    const loadingElement = document.createElement('div');
    loadingElement.id = 'loading';
    loadingElement.textContent = 'Buscando CEP...';
    cepInput.parentNode.appendChild(loadingElement);

    // Faz a requisição para a API do ViaCEP
    fetch(`https://viacep.com.br/ws/${cep}/json/`)
        .then(response => response.json())
        .then(data => {
            if (data.erro) {
                throw new Error('CEP não encontrado');
            }

            // Preenche os campos com os dados retornados
            ruaInput.value = data.logradouro;
            bairroInput.value = data.bairro;
            cidadeInput.value = data.localidade;
            estadoInput.value = data.uf;

            // Habilita edição do número
            document.getElementById('numero').removeAttribute('disabled');
        })
        .catch(error => {
            alert('Erro ao buscar CEP: ' + error.message);
            // Limpa os campos em caso de erro
            ruaInput.value = '';
            bairroInput.value = '';
            cidadeInput.value = '';
            estadoInput.value = '';
        })
        .finally(() => {
            // Remove o loader
            const loadingElement = document.getElementById('loading');
            if (loadingElement) {
                loadingElement.remove();
            }
        });
});

// Função para formatar o CEP enquanto digita
cepInput.addEventListener('input', (e) => {
    let value = e.target.value.replace(/\D/g, ''); // Remove tudo que não é número
    
    if (value.length > 8) {
        value = value.substr(0, 8);
    }
    
    if (value.length > 5) {
        value = value.substr(0, 5) + '-' + value.substr(5);
    }
    
    e.target.value = value;
});

// Função para validar campos obrigatórios
function validateAddress() {
    const requiredFields = [
        { field: cepInput, name: 'CEP' },
        { field: ruaInput, name: 'Rua' },
        { field: document.getElementById('numero'), name: 'Número' },
        { field: bairroInput, name: 'Bairro' },
        { field: cidadeInput, name: 'Cidade' },
        { field: estadoInput, name: 'Estado' }
    ];

    let isValid = true;
    requiredFields.forEach(({ field, name }) => {
        if (!field.value.trim()) {
            alert(`O campo ${name} é obrigatório`);
            field.focus();
            isValid = false;
        }
    });

    return isValid;
}

// Adicionar ao form submit
const form = document.querySelector('form');
form.addEventListener('submit', (e) => {
    e.preventDefault();
    
    if (validateAddress()) {
        // Aqui você pode adicionar a lógica para enviar os dados
        alert('Formulário enviado com sucesso!');
    }
});