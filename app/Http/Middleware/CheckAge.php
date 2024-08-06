<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class CheckAge
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        // if (!Auth::check()) {
        //     return redirect()->route('login');
        // }
        // else {
        //     if(Auth::user()->role=='admin') {

        //     }
        //     else if(Auth::user()->role=='mahasiswa') {

        //     }
        // }
        if($request->input('age')<=18) {
            return redirect()->route('dashboard');
        }
        return $next($request);
    }
}
