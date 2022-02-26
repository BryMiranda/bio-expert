<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    Route::get('/', function () {
        return redirect()->route('subdomain-login');
    });

        Route::get('login', [WebServiceDocsController::class, 'index'])->name('docs.index');
        Route::get('login', 'Auth\LoginController@index')->name('subdomain-login');
});
