<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateAprendizTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('aprendiz', function (Blueprint $table) {
            $table->increments('id_aprendiz');
            $table->string('nom_aprendiz');
            $table->string('apell_aprendiz');
            $table->string('correo_aprendiz');
            $table->string('documento_aprendiz');
            $table->integer('fk_id_ficha')->unsigned();
            $table->foreign('fk_id_ficha')->references('id_ficha')->on('ficha');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('aprendiz');
    }
}
