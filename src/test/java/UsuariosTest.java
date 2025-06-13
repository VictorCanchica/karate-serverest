

import com.intuit.karate.junit5.Karate;

class UsuariosTest {
    @Karate.Test
    Karate testCrud() {
        return Karate.run("features/usuarios/crudUsuario").relativeTo(getClass());
    }
}
