document.addEventListener("DOMContentLoaded", () => {
    const form = document.getElementById("registerForm");

    // Função para validar campos
    const validateField = (input, errorMessage) => {
        const errorSpan = document.getElementById(`${input.id}Error`);
        if (!input.validity.valid) {
            errorSpan.style.display = "block";
            errorMessage && (errorSpan.textContent = errorMessage);
        } else {
            errorSpan.style.display = "none";
        }
    };

    // Eventos de validação em tempo real
    form.fullName.addEventListener("input", () => validateField(form.fullName, "Campo obrigatório"));
    form.birthDate.addEventListener("input", () => {
        const regex = /^(0[1-9]|[12][0-9]|3[01])\/(0[1-9]|1[012])\/\d{4}$/;
        const isValidDate = regex.test(form.birthDate.value);
        validateField(form.birthDate, isValidDate ? "" : "Data inválida. Use o formato DD/MM/AAAA");
    });
    form.email.addEventListener("input", () => validateField(form.email, "Email inválido"));
    form.password.addEventListener("input", () => {
        const isValidPassword = form.password.value.length >= 6;
        validateField(form.password, isValidPassword ? "" : "Senha deve ter pelo menos 6 caracteres");
    });

    // Submissão do formulário
    form.addEventListener("submit", (event) => {
        event.preventDefault(); // Evita envio se houver erros
        let isValid = true;

        // Valida todos os campos novamente
        ["fullName", "birthDate", "email", "password"].forEach((field) => {
            const input = form[field];
            if (!input.validity.valid) {
                validateField(input);
                isValid = false;
            }
        });

        if (isValid) {
            alert("Cadastro realizado com sucesso!");
            form.reset(); // Limpa o formulário após sucesso
        }
    });
});
