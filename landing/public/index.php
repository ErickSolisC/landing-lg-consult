<?php
require_once __DIR__ . '/../app/Core/Router.php';
require_once __DIR__ . '/../app/Controllers/UserController.php';

$router = new Router();

$router->setBasePath('/landing-lg-consult/landing/public');

require_once __DIR__ . '/../routes/web.php';

$router->resolve();
