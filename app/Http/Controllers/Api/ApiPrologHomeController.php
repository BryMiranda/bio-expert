<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ApiPrologHomeController extends Controller
{
    public function store()
    {
        $context = stream_context_create(
            array(
                "http" => array(
                    "header" => "User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36"
                )
            )
        );

        $reserveUrl = config('bioin.getProductReserve.url') . $product->internal_id;

        $reserveResponse = Http::get($reserveUrl);

        $reserveResponse = Http::get($reserveUrl);

        /* $file = file_get_contents('Prolog/R1.pl', false, $context); */

        return file_get_contents('Prolog/R1.pl');
    }
}
