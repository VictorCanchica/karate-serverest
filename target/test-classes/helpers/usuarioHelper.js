function uuid() {
  return java.util.UUID.randomUUID().toString();
}

function randomEmail() {
  return 'user_' + uuid() + '@example.com';
}

function nuevoUsuario() {
  return {
    nome: 'Juan Tester',
    email: randomEmail(),
    password: '123456',
    administrador: 'true'
  };
}

// ¡IMPORTANTE! Esto es lo que retorna el read() en Karate:
var usuarioHelper = {
  randomEmail: randomEmail,
  nuevoUsuario: nuevoUsuario
};

usuarioHelper;
