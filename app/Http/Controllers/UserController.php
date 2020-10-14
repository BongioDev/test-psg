<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Inertia\Inertia;
use Illuminate\Support\Facades\Auth;

class UserController extends Controller
{

    public function showUsers() { 
        $users = User::where('role', null)->get();
        $loggedInUser = Auth::user();

        return Inertia::render('AdminUsers', [
            'users' => $users,
            'LoggedInUser' => $loggedInUser,
        ]);
    }
    
}
