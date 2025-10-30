<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        Schema::create('kosakatas', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('bahasa_id');
            $table->string('kata_asli');
            $table->string('terjemahan');
            $table->text('makna')->nullable();
            $table->text('contoh_penggunaan')->nullable();
            $table->timestamps();

            $table->foreign('bahasa_id')->references('id')->on('bahasas')->onDelete('cascade');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('kosakatas');
    }
};
