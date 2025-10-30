<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\BahasaController;
use App\Http\Controllers\KosakataController;

Route::get('/', [AuthController::class, 'showLogin'])->name('login');
Route::post('/login', [AuthController::class, 'login'])->name('login.process');
Route::post('/logout', [AuthController::class, 'logout'])->name('logout');

Route::middleware('auth')->group(function () {

    Route::get('/home', [BahasaController::class, 'index'])->name('home');

    Route::post('/bahasa/store', [BahasaController::class, 'store'])->name('bahasa.store');
    Route::delete('/bahasa/{id}', [BahasaController::class, 'destroy'])->name('bahasa.destroy');

    Route::get('/bahasa/{id}/isi_kamus', [KosakataController::class, 'index'])->name('isi_kamus.index');
    Route::get('/bahasa/{id}/isi_kamus/create', [KosakataController::class, 'create'])->name('isi_kamus.create');
    Route::post('/bahasa/{id}/isi_kamus', [KosakataController::class, 'store'])->name('isi_kamus.store');
    Route::delete('/bahasa/{bahasa_id}/isi_kamus/{id}', [KosakataController::class, 'destroy'])->name('isi_kamus.destroy');
});

Route::get('/register', [AuthController::class, 'showRegisterForm'])->name('register.form');
Route::post('/register', [AuthController::class, 'register'])->name('register');

