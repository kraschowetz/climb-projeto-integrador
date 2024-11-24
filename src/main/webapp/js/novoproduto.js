// Drag and drop functionality
const dropZone = document.getElementById('dropZone');
        
dropZone.addEventListener('dragover', (e) => {
    e.preventDefault();
    dropZone.style.background = '#f0f0f0';
});

dropZone.addEventListener('dragleave', () => {
    dropZone.style.background = 'white';
});

dropZone.addEventListener('drop', (e) => {
    e.preventDefault();
    dropZone.style.background = 'white';
    const files = e.dataTransfer.files;
    handleFiles(files);
});

dropZone.addEventListener('click', () => {
    const input = document.createElement('input');
    input.type = 'file';
    input.multiple = true;
    input.accept = 'image/*';
    input.onchange = (e) => {
        handleFiles(e.target.files);
    };
    input.click();
});

function handleFiles(files) {
    for(const file of files) {
        if (file.type.startsWith('image/')) {
            const reader = new FileReader();
            reader.onload = (e) => {
                const img = document.createElement('img');
                img.src = e.target.result;
                img.style.width = '100px';
                img.style.height = '100px';
                img.style.objectFit = 'cover';
                img.style.margin = '5px';
                dropZone.appendChild(img);
            };
            reader.readAsDataURL(file);
        }
    }
}

// Form submission
const form = document.getElementById('productForm');
form.addEventListener('submit', (e) => {
    e.preventDefault();
    // Aqui você pode adicionar a lógica para enviar os dados do formulário
    alert('Produto cadastrado com sucesso!');
});