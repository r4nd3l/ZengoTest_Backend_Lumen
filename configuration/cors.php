<?php

return [
    'enabled' => env('CORS_ENABLED', true),
    'origin' => env('CORS_ORIGIN', '*'),
    'methods' => env('CORS_METHODS', 'GET, POST, PUT, PATCH, DELETE, OPTIONS'),
    'headers' => env('CORS_HEADERS', 'Content-Type, Authorization, X-Requested-With'),
    'expose_headers' => env('CORS_EXPOSE_HEADERS', ''),
    'credentials' => env('CORS_CREDENTIALS', false),
    'max_age' => env('CORS_MAX_AGE', 0),
];
