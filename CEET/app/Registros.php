<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Registros extends Model
{
    protected $primaryKey="id_registro";
    protected $table="registro";
    protected $fillable=["nombre","jornada","ficha","cantidad","aula"];
}
