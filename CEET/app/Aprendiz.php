<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Aprendiz extends Model
{
    protected $primaryKey = "id_aprendiz";
    protected $table = "aprendiz";
    protected $fillable = ["nom_aprendiz","apell_aprendiz","correo_aprendiz","documento_aprendiz"];
}
