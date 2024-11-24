document.querySelector('form').addEventListener('submit', function (event) {
    let isValid = true;

    // Campo Email
    const email = document.getElementById('email');
    const emailValue = email.value.trim();
    const emailError = document.getElementById('emailError'); // Span para mostrar mensagens

    // Expressão regular para validação de email
    const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

    if (emailValue === '') {
        emailError.textContent = 'O campo email é obrigatório.';
        emailError.style.display = 'block';
        isValid = false;
    } else if (!emailPattern.test(emailValue)) {
        emailError.textContent = 'Por favor, insira um email válido (ex: exemplo@gmail.com).';
        emailError.style.display = 'block';
        isValid = false;
    } else {
        emailError.style.display = 'none'; // Remove erro se válido
    }

    // Previne envio do formulário se houver erro
    if (!isValid) {
        event.preventDefault();
    }
});

