<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Registro</title>
    <link rel="stylesheet" href="/landing-lg-consult/landing/public/css/style.css">
    <script src="/landing-lg-consult/landing/public/js/app.js" defer></script>
</head>
<div class="page-wrapper">
    <body>
    <?php include 'header.php'; ?>

   <div id="registroFormContainer">
        <h2>Formulario de Registro</h2>
        <form id="registroForm">
            <label>Nombre:
                <input type="text" name="nombre" required>
                <small class="error-message"></small>
            </label>
            <label>Correo:
                <input type="email" name="correo" required>
                <small class="error-message"></small>
            </label>
            <label>Contraseña:
                <input type="password" name="password" required>
                <small class="error-message"></small>
            </label>
            <label>Fecha de Nacimiento:
                <input type="date" name="fecha_nacimiento" required>
                <small class="error-message"></small>
            </label>
            <button type="submit" disabled>Registrarse</button>
        </form>
    </div>

    <?php include 'footer.php'; ?>
    </body>
</html>
