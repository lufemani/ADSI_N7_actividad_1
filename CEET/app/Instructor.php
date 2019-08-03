<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Instructor extends Model
{
    protected $primaryKey = "id_instructor";
    protected $table = "instructor";
    protected $fillable = ["nom_instructor","apell_instructor","doc_instructor","correo"];
}
