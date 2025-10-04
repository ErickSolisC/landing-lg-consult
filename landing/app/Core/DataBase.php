<?php
class Database {
    private static ?PDO $pdo = null;

    public static function connect(): PDO {
        if (self::$pdo !== null) {
            return self::$pdo;
        }

        $config = require __DIR__ . '../../../config/config.php';
        $db = $config['db'];

        try {
            self::$pdo = new PDO(
                "mysql:host={$db['host']};dbname={$db['name']};charset={$db['charset']}",
                $db['user'],
                $db['pass']
            );
            self::$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            self::$pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
            return self::$pdo;
        } catch (PDOException $e) {
            die("Error de conexión a la base de datos: " . $e->getMessage());
        }
    }
}
