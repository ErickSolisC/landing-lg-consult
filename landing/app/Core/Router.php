<?php
class Router {
    private $routes = [];
    private $basePath = '';

    public function setBasePath($basePath) {
        $this->basePath = rtrim($basePath, '/');
    }

    public function get($path, $callback) {
        $this->routes['GET'][$path] = $callback;
    }

    public function post($path, $callback) {
        $this->routes['POST'][$path] = $callback;
    }

    public function resolve() {
        $uri = parse_url($_SERVER['REQUEST_URI'], PHP_URL_PATH);
        $method = $_SERVER['REQUEST_METHOD'];

        if (!empty($this->basePath) && strpos($uri, $this->basePath) === 0) {
            $uri = substr($uri, strlen($this->basePath));
        }

        $uri = '/' . ltrim($uri, '/');
        if ($uri !== '/' && substr($uri, -1) === '/') {
            $uri = rtrim($uri, '/');
        }

        $callback = $this->routes[$method][$uri] ?? null;

        if ($callback) {
            call_user_func($callback);
        } else {
            http_response_code(404);
            echo "404 | Página no encontrada";
        }
    }
}
