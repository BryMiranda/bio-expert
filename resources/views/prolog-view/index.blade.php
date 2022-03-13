<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menu</title>
    <link rel="stylesheet" href="Recursos/CSS/Style.css">
</head>

<body>
    <header>
        <div class="menu">

            <nav>
                <ul>
                    <li><a href="Registro.html">Registrar </a></li>
                    <li><a href="Iniciar sesion.html">Iniciar Sección </a></li>
                </ul>
                <nav>
        </div>
    </header>

    <div class="consulta">
        <div>
            <h2>Hacer consulta simple</h2>
            <small>Por ejemplo:<br>
                Selecciona un item y te direccionaremos a la pagina de consulta segun la acciòn</small>

            ¿Ibuprofeno en transito (status)? <strong>Por detras realiza una consulta a prolog
                ('Ibuprofeno','x').</strong><br>

        </div>
        <form class="Consulta" action="{{ route('prolog.store', ['consult' => true]) }}" method="post">
            @csrf
            <div class="Contenedor">
                <select name="item1">
                    <option value="Paracetamol">Paracetamol</option>
                    <option value="Ibuprofeno">Ibuprofeno</option>
                    <option value="Lactulosa">Lactulosa</option>
                    <option value="Bupivacaína">Bupivacaína</option>
                    <option value="Lidocaína">Lidocaína</option>
                    <option value="Alopurinol">Alopurinol</option>
                </select>
            </div>
            <select name="action">
                <option value="transito">transito</option>
                <option value="pedido">pedido</option>
                <option value="bodega">bodega</option>
                <option value="lote">lote</option>
            </select>
            <div class="Contenedor">
                <select name="item2">
                    <option value="Analgan">Analgan</option>
                    <option value="Ibuprofeno">Ibuprofeno</option>
                    <option value="Aspirina">Aspirina</option>
                    <option value="Naloxona">Naloxona</option>
                    <option value="Ácido Valproico">Ácido Valproico</option>
                    <option value="fenobarbital">fenobarbital</option>
                    <option value="Amoxicilina">Amoxicilina</option>
                </select>
            </div>
            <div>
                <input type="submit" value="Consultar" class="button">
            </div>
        </form>
    </div class="Consu">
    @if ($file != null)
    <div>
        <textarea class="m-2 mt-8" style="min-height: 200px; width: 80%;" name="program">
                    {{ $file }}
                </textarea>
        </div>
    

    

    <h2 style="color:white;">Resultado de consultar ?- {{ $query }}</h2>
    <div style="background-color:powderblue; border: 1px dashed black; width: 90%; padding-left: 12px; padding-right: 12px;">
        {{-- <pre>
            <?php
                foreach ($output as $line) {
                    echo $line . '<br>';
                }
                ?>
            </pre> --}}
        <?php //var_dump($output) 
        ?>
        <p>Respuesta: <?= $returnValue ?> <?php
                                                    if ($returnValue == 0) echo $item1.' Si se encuentra en '.$action.' junto a '.$item2;
                                                    elseif ($returnValue == 1) echo $item2.' No se encuentra en '.$action.' junto a '.$item2;
                                                    elseif ($returnValue == 2) echo 'Error';
                                                    ?></p>
    @endif
</body>

</html>
