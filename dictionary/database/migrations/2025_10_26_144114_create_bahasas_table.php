<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        Schema::create('bahasas', function (Blueprint $table) {
            $table->id();
            $table->string('nama_bahasa')->unique();
            $table->string('asal_negara');
            $table->text('deskripsi');
            $table->integer('tahun_update');
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('bahasas');
    }
};
