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
        $user_buildings = [];
        $user_rooms = [];
        $user_lights = [];
        
        //buildings
        for($i = 0; $i < $user->building->count(); $i++) {
            array_push($user_buildings, $user->building[$i]);
        };

        //rooms
        for($i = 0; $i < count($user_buildings); $i++) {
            array_push($user_rooms, $user->building[$i]->room->all());
        };

        //lights dit werkt nog niet tegoei, ik krijg 2 maal alle lichten, nested loop?
        // for($i = 0; $i < count($user_rooms); $i++) {
        //     array_push($user_lights, $user->$user_rooms[$i]->light->get());
        // };

        // dd($user_lights);

        return Inertia::render('User/Buildings', [
            'user' => $user,
            'user_buildings' => $user_buildings,
            'user_rooms' => $user_rooms,
        ]);
    }


}
