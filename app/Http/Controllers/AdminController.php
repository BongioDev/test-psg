<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Inertia\Inertia;
use App\Models\User;
use App\Models\Building;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class AdminController extends Controller
{

    public function showUsers() { 
        $users = User::where('role', null)->get();
        $loggedInUser = Auth::user();
        $buildings = Building::get();

        return Inertia::render('AdminUsers', [
            'users' => $users,
            'LoggedInUser' => $loggedInUser,
            'buildings' => $buildings,
        ]);
    }

    public function createUser(Request $request) {
        //validate
        $request->validate([
            'name' => 'required|string',
            'email' => 'required|email|unique:users',
            'building' => 'required',
        ]);

        $building = Building::where('name', $request->input('building'))->first();

        //make user
        $newUser = new User;
        $newUser->name = $request->input('name');
        $newUser->email = $request->input('email');
        $newUser->building_id = $building->id;
        $newUser->password = Hash::make('newuser');
        $newUser->save();

        return redirect('/users')->with('successMessage', 'Gebruiker aangemaakt.');
    }

}
