-- 1. Script SQL para seleccionar usuarios registrados en los últimos 30 días
SELECT * FROM usuarios WHERE fecha_registro >= NOW() - INTERVAL 30 DAY;

-- 2. Script SQL para contar usuarios con correo electrónico de Gmail
SELECT COUNT(*) AS total_gmail FROM usuarios WHERE correo LIKE '%@gmail.com';

-- 3. Script SQL para actualizar el nombre de un usuario
UPDATE usuarios SET nombre = 'Erick Solis' WHERE id = 10;

-- 4. Script SQL para eliminar un usuario específico
DELETE FROM usuarios WHERE id = 15;
