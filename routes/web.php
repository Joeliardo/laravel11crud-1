<?php

use App\Http\Controllers\ProfileController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\PemeriksaanController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

Route::middleware('auth')->group(function () {
    Route::resource('admin/user', UserController::class);
    Route::resource('admin/pemeriksaan', PemeriksaanController::class);
    Route::get('admin/pemeriksaan/download/{file}', [PemeriksaanController::class, 'download'])->name('admin.file.download');    
});

Route::get('cekumur', function() {
    return 'umur anda >18 tahun';
})->middleware('cekumur');

require __DIR__.'/auth.php';
