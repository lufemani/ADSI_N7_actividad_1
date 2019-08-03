<?php

namespace App\Http\Controllers;

use App\Registros;
use Illuminate\Http\Request;
use App\Instructor;
use App\Aula;
use App\Ficha;
use App\Aprendiz;
use App\Jornada;
class AdministradorController extends Controller
{
        public function index()
    {
        $aula=Aula::all();
        $ficha=Ficha::all();
        $aprendiz=Aprendiz::all();
        $jornada=Jornada::all();
        $instructor=Instructor::all();
       return view('Administrador.registrar', compact('aula','ficha','aprendice','jornada','instructor'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        Registros::create([
            'nombre'=>$request -> input('nombre'),
            'jornada'=>$request -> input('jornada'),
            'ficha'=>$request -> input('ficha'),
            'aula'=>$request -> input('aula'),
            'cantidad'=>$request -> input('cantidad')
        ]);
        return redirect('inicio');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
