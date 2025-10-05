<?php
require_once __DIR__ . '/../Repositories/UserRepository.php';
require_once __DIR__ . '/../Core/RequestValidator.php';

class UserService {
    private $userRepo;

    public function __construct() {
        $this->userRepo = new UserRepository();
    }

   public function register($data) {
    $validator = new RequestValidator();
    $errors = $validator->validateUser($data);

    if ($errors) {
        return [
            'success' => false,
            'message' => 'Errores de validación',
            'errors' => $errors
        ];
    }

    $result = $this->userRepo->createUser($data);

    return [
        'success' => $result['success'] ?? false,
        'message' => $result['message'] ?? 'Error al registrar'
    ];
}

}
