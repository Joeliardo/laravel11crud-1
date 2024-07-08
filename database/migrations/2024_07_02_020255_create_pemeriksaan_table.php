<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('pemeriksaan', function (Blueprint $table) {
            $table->id();
            $table->string('no_transaksi_pemeriksaan')->unique();
            $table->foreignId('idDokter')->references('id')->on('dokter')->constrained()->onDelete('cascade')->onUpdate('cascade');
            $table->foreignId('idPasien')->references('id')->on('pasien')->constrained()->onDelete('cascade')->onUpdate('cascade');
            $table->date('tanggalPeriksa');
            $table->string('fileLampiran');
            $table->text('keluhan');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('pemeriksaan');
    }
};
