<?php

use App\Http\Controllers\CountyController;
use App\Http\Controllers\CityController;

$router->group(['prefix' => 'api'], function () use ($router) {
    $router->options('/{any:.*}', function () {
        return response('', 200);
    });

    // counties
    $router->get('/counties', 'CountyController@index');
    $router->get('/counties/{id}', 'CountyController@show');

    // cities within counties
    $router->get('/counties/{countyId}/cities', 'CityController@byCounty');
    $router->post('/counties/{countyId}/cities', 'CityController@store');

    // all cities
    $router->get('/cities', 'CityController@index');
    $router->get('/cities/{id}', 'CityController@show');
    $router->put('/cities/{id}', 'CityController@update');
    $router->delete('/cities/{id}', 'CityController@destroy');
});
