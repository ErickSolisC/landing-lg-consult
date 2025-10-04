<?php
class RequestValidator {
    public function validateUser($data) {
        $errors = [];

        if(!filter_var($data['correo'], FILTER_VALIDATE_EMAIL)) {
            $errors[] = "Correo inválido";
        }

        if(!preg_match('/^(?=.*[A-Z].*[A-Z])(?=.*\d)(?=.*[@$!%*?&]).{8,}$/', $data['password'])) {
            $errors[] = "Contraseña inválida";
        }

        $edad = (new DateTime())->diff(new DateTime($data['fecha_nacimiento']))->y;
        if($edad < 18) {
            $errors[] = "Debes ser mayor de 17 años";
        }

        return $errors;
    }
}
