<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Ficha extends Model
{
    protected $primaryKey = "id_ficha";
    protected $table = "ficha";
    protected $fillable = ["num_ficha","nom_ficha"];
}
