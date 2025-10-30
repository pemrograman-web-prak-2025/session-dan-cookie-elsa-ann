<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Kosakata extends Model
{
     protected $table = 'isi_kamus'; 
    protected $fillable = [
        'id_kata',
        'id_bahasa',
        'arti',
        'contoh',
        'kategori',
    ];

    public function bahasa()
    {
        return $this->belongsTo(Bahasa::class);
    }
}
