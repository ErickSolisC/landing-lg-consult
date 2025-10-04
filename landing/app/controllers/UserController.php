<?php
require_once __DIR__ . '/../Services/UserService.php';
require_once __DIR__ . '/../Core/Response.php';

class UserController {
    private $userService;

    public function __construct() {
        $this->userService = new UserService();
    }

    public function showLanding() {
        require __DIR__ . '/../Views/landing.php';
    }

    public function showRegisterForm() {
        require __DIR__ . '/../Views/register.php';
    }

    public function registerUser() {
        header('Content-Type: application/json');

        $data = json_decode(file_get_contents("php://input"), true);

        if (!$data) {
            echo json_encode(['success' => false, 'message' => 'Datos inválidos']);
            return;
        }

        try {
            $result = $this->userService->register($data);

            if (!isset($result['success'])) {
                $result = ['success' => false, 'message' => 'Error al registrar'];
            }

            echo json_encode($result);
        } catch (Exception $e) {
            echo json_encode(['success' => false, 'message' => $e->getMessage()]);
        }
    }


} 
