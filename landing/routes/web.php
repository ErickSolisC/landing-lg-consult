<?php
$router->get('/', function() {
    (new UserController())->showLanding();
});

$router->get('/landing/', function() {
    (new UserController())->showLanding();
});

$router->get('/registro', function() {
    (new UserController())->showRegisterForm();
});

$router->post('/api/registro', function() {
    (new UserController())->registerUser();
});