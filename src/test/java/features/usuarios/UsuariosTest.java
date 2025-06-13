package features.usuarios;

import com.intuit.karate.junit5.Karate;

class UsuariosTest {
    @Karate.Test
    Karate testCrud() {
        return Karate.run("classpath:features/usuarios/crudUsuario.feature");
    }
}
