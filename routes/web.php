<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('master');
});

Route::resource('admin/user', \App\Http\Controllers\UserController::class);
Route::resource('admin/pemeriksaan', \App\Http\Controllers\PemeriksaanController::class);
Route::get('admin/pemeriksaan/download/{file}', [\App\Http\Controllers\PemeriksaanController::class, 'download'])->name('admin.file.download');
