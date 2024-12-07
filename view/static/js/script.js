document.getElementById("cadastro").addEventListener("submit", function(event) {
    const nome = document.getElementById("nome").value.trim();
    const email = document.getElementById("email").value.trim();
    const senha = document.getElementById("senha").value.trim();

    // Verifica se todos os campos estão preenchidos
    if (!nome || !email || !senha ) {
        alert("Por favor, preencha todos os campos.");
        event.preventDefault(); // Impede o envio do formulário
        return;
    }


});


