<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link rel="icon" type="image/png" href="css/img/logo.png">

    <title>SENA</title>
</head>
<body class="keyboard-focused">
<nav>
    <div class="nav-wrapper" style="background-color: #e57373">
        <a href="#" class="brand-logo">ADSI</a>
        <ul id="nav-mobile" class="right hide-on-med-and-down">
            <li><a href="inicio">Reporte de asistencias</a></li>
            <li><a href="registrar">Registrar aprendices</a></li>
        </ul>
    </div>
</nav>

    <div class="container" style="margin-top: 100px">
        <div class="row">
            <form action="registro/store" method="post">
                {{ csrf_field() }}}
            <div class="input-field col s4">
                <select name="nombre">
                    <option value="" disabled selected>Elija instructor</option>
                    @foreach($instructor as $instructores)
                    <option name="nombre">{{$instructores -> nombre }}</option>
                        @endforeach
                </select>
            </div>

            <div class="input-field col s3">
                <select name="jornada">
                    <option value="" disabled selected>Elija jornada</option>
                    @foreach($jornada as $jornadas)
                        <option name="jornada">{{$jornadas -> tipo_jornada }}</option>
                    @endforeach
                </select>


            </div>
                <div class="input-field col s3">
                    <select name="ficha">
                        <option value="" disabled selected>Elija ficha</option>
                        @foreach($ficha as $fichas)
                            <option >{{$fichas -> num_ficha }}</option>
                        @endforeach
                    </select>
                </div>

            <div class="input-field col s3">
                <label >Cantiad de aprendices</label>
                <input name="cantidad" type="text" >
            </div>

                <div class="input-field col s4">
                    <select name="aula">
                        <option value="" disabled selected>Elija aula</option>
                        @foreach($aula as $aulas)
                            <option >{{$aulas -> num_aula }}</option>
                        @endforeach
                    </select>
                </div>

                <div class="input-field col s3">
                    <button class="btn btn-light" type="submit" style="margin: 180px">Guardar</button>
                </div>

</form>
        </div>
        </div>

<script
    src="https://code.jquery.com/jquery-3.4.1.js"
    integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
    crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
<script>
    $(document).ready(function(){
        $('select').formSelect();
    });
</script>
</body>
</html>
