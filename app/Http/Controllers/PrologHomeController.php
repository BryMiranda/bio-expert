<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PrologHomeController extends Controller
{
    public function index()
    {
        //se setean todas las variables a nulas para que no hallan errores
        $file = null;
        $lastLine = null;
        $output = null;
        $returnValue = null;
        $returnValue2 = null;
        $returnValueList = null;
        $action = null;
        $actionPass = null;
        $consult = null;
        $query = null;
        $consult2 = null;
        $query2 = null;
        $list = null;
        $queryList = null;
        $consultList = null;
        $outputList = null;

        //si es una consulta simple se recoje el archivo y la consulta query,
        // se abre un string con el archivo prolog R1.pl y se lee linea por linea
        // hasta que encuentra la consulta query, se guarda en consult y se cierra el archivo
        if (request('consult') == true) {
            $query = request('query');
            $file = file_get_contents('R1.pl');
            $path = env('PROLOG_LOCAL_PATH'); //ruta de ejecución prolog
            //exec ejeuta el comando swipl que es la conexiòn con prolog y le pasa el archivo R1.pl
            $lastLine = exec($path." -f R1.pl -g listing(".$query.") R1.pl 2>&1", $output, $returnValue);
            //comando que ejecuta la consulta query a prolog. 
            //$output es el array que contiene el resultado de la consulta y $returnValue es el valor de retorno de la consulta
            //los valores de retorno son 0 si la consulta es correcta y 1 si no es correcta y 2 si hay un error de sintaxis

            $action = request('action');
            $consult = true; // le indica a la vista que es una consulta simple
        }

        // si es una consulta de aprobacion se recoje el archivo y la consulta query,
        // se abre un string con el archivo prolog R1.pl y se lee directamente aprobacion(A,B) :- consult(A,B).
        // se guarda en consult2 y se cierra el archivo
        if (request('consult2') == true) {
            $query2 = request('query2');
            $file = file_get_contents('R1.pl');
            $path = env('PROLOG_LOCAL_PATH');
            $lastLine = exec($path." -f R1.pl -g ".$query2." R1.pl 2>&1", $output, $returnValue2);
            $action = request('action');
            $consult2 = true; // le indica a la vista que es una consulta de aprobacion
        }
        
        // si es una consulta de listar se recoje el archivo y la consulta queryList,
        // se abre un string con el archivo prolog R1.pl y se lee linea por linea
        // va buscando el predicado pasado por parametro y si lo encuentra lo guarda en list y se cierra el archivo
        // se envía a la vista con la variable list para mostrar los resultados

        if (request('consultList') == true) {
            $queryList = request('queryList');
            $format = "listing(".$queryList.")";
            $file = file_get_contents('R1.pl');
            $path = env('PROLOG_LOCAL_PATH');
            //exec ejeuta el comando swipl que es la conexiòn con prolog y le pasa el archivo R1.pl
            $lastLine = exec($path." -f R1.pl -g ".$format." R1.pl 2>&1", $outputList, $returnValueList);
            $action = request('action');
            $consultList = true; // le indica a la vista que es una consulta de listar
        }

        //se retorna la vista prolog con las variables que se le pasaron

        return view('prolog-view.index')
            ->with('file', $file)
            ->with('query', $query)
            ->with('lastLine', $lastLine)
            ->with('output', $output)
            ->with('returnValue', $returnValue)
            ->with('returnValue2', $returnValue2)
            ->with('returnValueList', $returnValueList)
            ->with('action', $action)
            ->with('consult', $consult)
            ->with('query2', $query2)
            ->with('consult2', $consult2)
            ->with('list', $list)
            ->with('consultList', $consultList)
            ->with('item1', request('item1'))
            ->with('item2', request('item2'))
            ->with('actionPass', request('actionPass'))
            ->with('outputList', $outputList)
            ->with('queryList', $queryList);
            ;
    }

    public function store()
    {
        //la consulta sencilla query se guarda en la variable query y se retorna a la vista prolog
        $consult = request('action')."('".request('item1')."','".request('item2')."')";

        //action es cualquier predicado predefinido (bodega, lote,etc), item1 y item2 son los elementos que se pasan por parametro
        
        return redirect()->route('prolog.index',[
            'consult' => true,
            'query' => $consult,
            'actionPass' => request('action'),
            'item1' => request('item1'),
            'item2' => request('item2')
        ]);
    }

    public function consult()
    {
        //la consulta aprovacion se guarda en la variable query2 y se retorna a la vista prolog
        //esta variable analizarà cada uno de los casos de aprobacion
        //Terminos de aprovaciòn
        //aprobacion(A,B) :- 
    	//productoA(A), productoB(B), transito(A, B), pedido(A, B), bodega(A, B), lote(A, B).
        $consult2 = "aprobacion('".request('item1')."','".request('item2')."')";
        
        return redirect()->route('prolog.index',[
            'consult2' => true,
            'query2' => $consult2,
            'action' => request('action'),
            'actionPass' => request('actionPass'),
            'item1' => request('item1'),
            'item2' => request('item2')
        ]);
    }

    public function list()
    {
        //Se consulta toda la lista relacionado al predicado y se guarda en la variable list
        //esta variable se pasará a prolog como consulta y devolverá la lista

        $list = request('actionPass')."('".request('item1')."',X)";

        return redirect()->route('prolog.index',[
            'consultList' => true,
            'queryList' => $list,
            'actionPass' => request('actionPass'),
            'item1' => request('item1'),
            'item2' => request('item2')
        ]);
    }
}
