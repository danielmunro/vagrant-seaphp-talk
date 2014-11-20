<?php

require_once 'vendor/autoload.php';

$app = new Silex\Application();

$app->get('/hello/{name}', function($name) use ($app) {
    return 'Hello '.$app->escape($name).', thanks for stopping by!';
});

$app->run();
