<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class LogInController extends Controller
{
    public function index()
    {
        return view('log-in');
    }

    public function store(Request $request)
    {
        /* $this->validate($request, [
            'email' => 'required|string|email',
            'password' => 'required|string',
        ]);

            'email' => $request->email,
            'password' => $request->password,
        ];
        $remember = $request->has('remember');
        if (! Auth::guard('admin')->attempt($credentials, $remember)) {
            return back()
                ->withInput($request->only('email', 'remember'))
                ->withErrors('Usuario/Contraseña inválida');
        } */

        return redirect()->route('prolog.index');
    }
}
