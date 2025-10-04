<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Landing Page - LG Consult</title>
    <link rel="stylesheet" href="/landing-lg-consult/landing/public/css/style.css" />
</head>
<body>
    <div class="page-wrapper">
        <?php include 'header.php'; ?>

        <main>
            <section class="productos">
                <h2>Productos</h2>
                <div class="grid">
                    <details>
                        <summary>Producto 1</summary>
                        <img src="assets/producto1.png" alt="Imagen del Producto 1" class="producto-img" />
                        <p>Producto 1.</p>
                    </details>
                    <details>
                        <summary>Producto 2</summary>
                        <img src="assets/producto2.png" alt="Imagen del Producto 2" class="producto-img" />
                        <p>Producto 2.</p>
                    </details>
                    <details>
                        <summary>Producto 3</summary>
                        <img src="assets/producto1.png" alt="Imagen del Producto 3" class="producto-img" />
                        <p>Producto 3.</p>
                    </details>
                </div>
            </section>
        </main>

        <?php include 'footer.php'; ?>
    </div>
</body>
</html>