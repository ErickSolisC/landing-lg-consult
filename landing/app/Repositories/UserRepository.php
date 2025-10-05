<?php
require_once __DIR__ . '/../Models/User.php';

class UserRepository {
    private $userModel;

    public function __construct() {
        $this->userModel = new User();
    }

    public function createUser($data) {
        return $this->userModel->create(
            $data['nombre'],
            $data['correo'],
            $data['password'],
            $data['fecha_nacimiento']
        );
    }
}
