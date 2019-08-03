<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link rel="icon" type="image/png" href="css/img/logo.png">

    <title>SENA</title>
</head>
<body>
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

            <table class="striped" style="background-color: #ADD8E6">
                <thead>
                <tr>
                    <th>NOMBRES</th>
                    <th>FICHA</th>
                    <th>AULA</th>
                    <th>JORNADA</th>
                    <th>C/APRENDICES</th>
                    <th>FECHA</th>
                </tr>
                </thead>

                <tbody>
                <tr>
                    @foreach($registro as $registros)
                    <td>{{$registros-> nombre}} </td>
                    <td>{{$registros-> ficha}}</td>
                    <td>{{$registros-> aula}}</td>
                    <td>{{$registros-> jornada}}</td>
                    <td>{{$registros-> cantidad}}</td>
                    <td>{{$registros-> created_at}}</td>
                </tr>
                @endforeach

                </tbody>
            </table>


    </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</body>
</html>




