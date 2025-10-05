<?php
require_once __DIR__ . '/../Core/Database.php';

class User {
    private $pdo;

    public function __construct() {
        $this->pdo = Database::connect();
    }

    public function create($nombre, $correo, $password, $fechaNacimiento) {
        try {
            $stmt = $this->pdo->prepare(
                "INSERT INTO usuarios (nombre, correo, password_hash, fecha_nacimiento)
                 VALUES (?, ?, ?, ?)"
            );
            $stmt->execute([
                htmlspecialchars($nombre),
                filter_var($correo, FILTER_SANITIZE_EMAIL),
                password_hash($password, PASSWORD_BCRYPT),
                $fechaNacimiento
            ]);
            return ['success' => true, 'message' => 'Registro exitoso'];
        } catch (PDOException $e) {
            return ['success' => false, 'message' => $e->getMessage()];
        }
    }
}
