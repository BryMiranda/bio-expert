<?php

use App\Http\Controllers\LogInController;
use App\Http\Controllers\PrologHomeController;
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

/* Route::get('/', function () {
    Route::get('/', function () {
        return redirect()->route('login.index');
    });
}); */
Route::get('/', [LogInController::class, 'index'])->name('login.index');
Route::post('/login/create', [LogInController::class, 'store'])->name('login.store');

Route::get('/prolog', [PrologHomeController::class, 'index'])->name('prolog.index');
Route::post('/prolog/consult', [PrologHomeController::class, 'store'])->name('prolog.store');
Route::post('/prolog/aprovation', [PrologHomeController::class, 'consult'])->name('prolog.consult');
Route::post('/prolog/list', [PrologHomeController::class, 'list'])->name('prolog.list');
