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
        
        $requestToken = bin2hex(random_bytes(16));
        $data['request_token'] = $requestToken;

        try {
            $result = $this->userService->register($data);

            $response = [
                'success' => $result['success'] ?? false,
                'message' => $result['message'] ?? 'Error al registrar',
                'request_token' => $requestToken
            ];

            echo json_encode($response);
        } catch (Exception $e) {
            echo json_encode(['success' => false, 'message' => $e->getMessage()]);
        }
    }


} 
