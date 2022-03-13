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
        <div style="color: white;">
            <h2>Hacer consulta simple</h2>
            <small>Por ejemplo:<br>
                Selecciona un item y te direccionaremos a la pagina de consulta segun la acciòn</small>

            ¿Ibuprofeno en transito (status)? <strong>Por detras realiza una consulta a prolog
                ('Ibuprofeno','x').</strong><br>

        </div>
        <form class="Consulta" action="{{ route('prolog.store', ['consult' => true , 'actionPass' => $action]) }}" method="post">
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
            <div style="padding-bottom: 25px;">
                <input type="submit" value="Consultar" class="button">
                <a href="{{ route('prolog.index')}}" class="button">Limpiar</a>
            </div>
        </form>
    </div class="Consulta">
    @if ($file != null)
        @if ($consult)
        <div class="Consulta">
            <h2 style="color:white;">Resultado de consultar ?- {{ $query }}</h2>
            <div
                style="background-color:powderblue; border: 1px dashed black; width: 90%; padding-left: 12px; padding-right: 12px;">
                <?php
                ?>
                <p>Respuesta: 
                    <?php
                    if ($returnValue == 0) {
                        echo $item1 . ' Si se encuentra en ' . $actionPass . ' junto a ' . $item2;
                    } elseif ($returnValue == 1) {
                        echo $item2 . ' No se encuentra en ' . $actionPass . ' junto a ' . $item2;
                    } elseif ($returnValue == 2) {
                        echo 'Error';
                    }
                    ?>
                </p>
            </div>
        </div>
        @endif
        <div class="Consulta">
            @if ($actionPass && !$consult2)
                <form class="Consulta"
                    action="{{ route('prolog.consult', ['consult' => true, 'item1' => $item1, 'item2' => $item2,'consult2' => true,'actionPass' => $actionPass]) }}" method="post">
                    @csrf
                    <h2 style="color:white;">Verifica si los productos pasan por todas las reglas de aprovación</h2>
                    <div style="padding-bottom: 50px;">
                        <input style="width: 15%" type="submit" value="Verificar Aprobacion" class="button">
                    </div>
                </form>
            @endif
        </div>
        @if ($consult2)
        <div class="Consulta">
            <h2 style="color:white;">Resultado de consultar ?- {{ $query2 }}</h2>
            <div
                style="background-color:powderblue; border: 1px dashed black; width: 90%; padding-left: 12px; padding-right: 12px;">
                <?php
                ?>
                <p>Respuesta: 
                    <?php
                    if ($returnValue2 == 0) {
                        echo 'El pedido de '. $item1 .' - '.$item2. ' está aprobado';
                    } elseif ($returnValue2 == 1) {
                        echo 'El pedido de '. $item1 .' - '.$item2. ' no está aprobado';
                    } elseif ($returnValue2 == 2) {
                        echo 'Error';
                    }
                    ?>
                </p>
            </div>
        </div>
        @endif
        @if (!$consultList)
        <div class="Consulta">
            <form class="Consulta"
                    action="{{ route('prolog.list', ['consult' => true, 'item1' => $item1,'consultList' => true, 'actionPass' => $actionPass]) }}" method="post">
                    @csrf
                    <h2 style="color:white;">Consulta los productos en base a la acción</h2>
                    <div style="padding-bottom: 50px;">
                        <input style="width: 15%" type="submit" value="Consultar lista" class="button">
                    </div>
                </form>
        @endif
        @if ($consultList)
            <div class="Consulta">
                <h2 style="color:white;">Listado: {{ $queryList }}</h2>
                <div
                    style="background-color:white; border: 1px dashed black; width: 90%; padding-left: 12px; padding-right: 12px;">
                    <pre><?php
                        foreach ($outputList as $line) {
                            echo $line.'<br>';
                        }
                        ?>
                    </pre>
                </div>
            </div>
        @endif
        </div>
    @endif
</body>

</html>
