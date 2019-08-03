<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Jornada extends Model
{
    protected $primaryKey = "id_jornada";
    protected $table = "jornada";
    protected $fillable = ["tipo_jornada"];
}
