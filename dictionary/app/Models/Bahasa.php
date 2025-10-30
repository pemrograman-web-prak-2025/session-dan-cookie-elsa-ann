<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Bahasa extends Model
{
    protected $table = 'bahasa'; 
     protected $primaryKey = 'id_bahasa'; 
    protected $fillable = [
        'nama_bahasa',
        'asal_negara',
        'deskripsi',
        'tahun_update',
    ];
    public $timestamps = false;

    public function kosakata()
    {
        return $this->hasMany(Kosakata::class);
    }
}
