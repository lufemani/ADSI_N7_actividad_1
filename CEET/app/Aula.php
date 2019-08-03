<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Aula extends Model
{
    protected $primaryKey = "id_aula";
    protected $table = "aula";
    protected $fillable = ["num_aula"];
}
