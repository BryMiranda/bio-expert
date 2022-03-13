<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PrologHomeController extends Controller
{
    public function index()
    {
        $file = null;
        $query = null;
        $lastLine = null;
        $output = null;
        $returnValue = null;
        $action = null;


        if (request('consult') == true) {
            $query = request('query');
            $file = file_get_contents('R1.pl');
            $path = 'C:\Prolog\swipl\bin\swipl.exe';
            $lastLine = exec($path." -f R1.pl -g ".$query." R1.pl 2>&1", $output, $returnValue);
            $action = request('action');
        }

        /* dd($output, $lastLine, 'valor retornado :'. $returnValue.' (0 = v, 1 = f, 2 = error)', 'consulta = '.$query,$file); */

        /* if ($returnValue == 0) echo 'true';
        elseif ($returnValue == 1) echo 'false';
        elseif ($returnValue == 2) echo 'error';*/

        return view('prolog-view.index')
            ->with('file', $file)
            ->with('query', $query)
            ->with('lastLine', $lastLine)
            ->with('output', $output)
            ->with('returnValue', $returnValue)
            ->with('action', $action)
            ->with('item1', request('item1'))
            ->with('item2', request('item2'))
            ;
    }

    public function store()
    {
        $consult = request('action')."('".request('item1')."','".request('item2')."')";

        /* $consult = request('action')."productoTransito('Paracetamol',X)"; */
        
        return redirect()->route('prolog.index',[
            'consult' => true,
            'query' => $consult,
            'action' => request('action'),
            'item1' => request('item1'),
            'item2' => request('item2')
        ]);
    }
}
