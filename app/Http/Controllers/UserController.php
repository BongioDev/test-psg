<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;
use Inertia\Inertia;
use Illuminate\Support\Facades\Auth;

class UserController extends Controller
{


    public function showBuildingsUser() { 

        $user = Auth::user();
        $user_buildings = $user->building;
        

        //kamers weergeven, aantal lichten klopt niet denk ik, moeten ook aparte lichte worde i guess






        dd($user->building->first()->room->first()->light);
        return Inertia::render('User/Buildings', [
            'user' => $user,
            'user_buildings' => $user_buildings,
        ]);
    }
  
    
}
