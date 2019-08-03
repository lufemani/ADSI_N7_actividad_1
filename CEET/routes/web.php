<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('inicio', 'AprendizController@index');
Route::get('registrar', 'AdministradorController@index');
Route::post('registro/store', 'AdministradorController@store');
