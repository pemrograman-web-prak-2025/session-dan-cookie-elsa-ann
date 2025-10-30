<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Admin;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    public function showLogin(){ return view('auth.login'); }
    public function login(Request $request){
        $credentials = $request->validate([
            'username' => 'required',
            'password' => 'required',
        ]);

        $remember = $request->has('remember');

        $admin = Admin::where('username', $credentials['username'])->first();

        if ($admin && Hash::check($credentials['password'], $admin->password)) {
            Auth::login($admin);
            return redirect()->route('home');
        }

        return back()->withErrors(['login_error' => 'Username atau password salah!']);
    }
    public function logout(){
        Auth::logout();
        return redirect()->route('login');
    }

    public function showRegisterForm(){
        return view('auth.register');
    }

    public function register(Request $request){
        $validated = $request->validate([
            'username' => 'required|unique:admins,username',
            'password' => 'required|min:6|confirmed', 
        ]);

        $admin = Admin::create([
            'username' => $validated['username'],
            'password' => Hash::make($validated['password']),
        ]);

        Auth::login($admin); 
        return redirect()->route('home')->with('success', 'Akun berhasil dibuat!');
    }

}
