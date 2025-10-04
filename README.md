# landing-lg-consult

**Create landing page - ADM Register users**

---

## Versión

**Prueba técnica — Erick Solis**

---

## Arquitectura y patrones aplicados

### Patrón de diseño: **MVC (Model–View–Controller)**

- **Model (Repositorio):**
  Se encarga de manejar la lógica de acceso a datos, centralizando las operaciones sobre la base de datos y utilizando **PDO (PHP Data Objects)** para establecer la conexión.
  Esto garantiza mayor seguridad y previene **inyecciones SQL**.

- **View (Vistas):**
  Contiene los archivos que definen la presentación visual (HTML, CSS y scripts asociados).
- **Controller (Controladores y Servicios):**
  Define la lógica de negocio y coordina la interacción entre las vistas y los modelos.

---

## Buenas prácticas implementadas

1. **Separación clara de responsabilidades:**  
   Cada capa (vista, lógica y datos) cumple un rol definido y no invade el ámbito de las otras.

2. **Validación doble (cliente + servidor):**

   - **Frontend:** Validaciones en tiempo real con JavaScript y feedback inmediato al usuario.
   - **Backend:** Validaciones en PHP con RequestValidator, reforzando la seguridad y consistencia de datos.

3. **Uso de clases y PDO:**  
   Se emplea **orientación a objetos** y **PDO** para el acceso a base de datos, lo cual permite el uso de **sentencias preparadas**, evitando así las inyecciones SQL y mejorando la seguridad general.

4. **Respuestas estructuradas en formato JSON:**  
   El backend devuelve respuestas uniformes (success, errors, message), permitiendo al frontend manejar errores y resultados de forma consistente.

5. **Gestión de errores controlada:**  
   Todos los posibles fallos de validación o de base de datos se devuelven con mensajes claros y manejables por el frontend.

6. **Diseño adaptable:**  
   Estilos CSS responsivos sin dependencias externas, manteniendo un peso liviano y un desempeño óptimo.

7. **Uso de buenas prácticas de UI/UX:**

   - Botón de registro **deshabilitado** hasta que el formulario sea válido.
   - Mensajes de error contextuales que solo aparecen durante la interacción.
   - Retroalimentación visual similar al comportamiento de frameworks como Bootstrap, pero sin dependencias externas.

8. **Código limpio:**  
   Se aplican principios de legibilidad, consistencia en nombrado.

---

## Tecnologías utilizadas

- **Frontend:**

  - HTML5
  - CSS3
  - JavaScript

- **Backend:**

  - PHP (Arquitectura MVC simplificada)
  - MySQL (gestión de usuarios)
  - **PDO** (conexión segura y parametrizada para prevenir inyecciones SQL)

- **Servidor local:**

  - XAMPP / WAMP

---

## Funcionalidades destacadas

- Registro de usuario con validaciones avanzadas.
- Botón de envío dinámico (habilitado solo cuando todos los campos son válidos).
- Validación de correo, nombre, contraseña segura y edad mínima (18 años).
- Comunicación cliente-servidor mediante fetch y JSON.
- Manejo de errores y retroalimentación al usuario en tiempo real.
- Conexión a base de datos mediante **PDO** para mayor seguridad y flexibilidad.

---

## Instrucciones para ejecutar el proyecto en local

1. Clonar o descargar el repositorio.
2. Colocar el proyecto en la carpeta pública de tu servidor local (htdocs, www, etc.).
3. Crear la base de datos en MySQL según la estructura definida en el modelo compartido.
4. Configurar las credenciales de conexión dentro del archivo de configuración (config/config.php).
5. Iniciar Apache y MySQL desde XAMPP, WAMP.
6. Acceder en el navegador con la siguiente url: http://localhost/landing-lg-consult/landing/public/
