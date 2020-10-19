<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Inertia\Inertia;
use App\Models\User;
use App\Models\Building;
use App\Models\user_building;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class AdminController extends Controller
{

    public function showUsers() { 
        $users = User::where('role', null)->get();
        $loggedInUser = Auth::user();

        return Inertia::render('Admin/AdminUsers', [
            'users' => $users,
            'LoggedInUser' => $loggedInUser,
        ]);
    }


    //create
    public function createUser(Request $request) {
        //validate
        $request->validate([
            'name' => 'required|string',
            'email' => 'required|email|unique:users',
        ]);

        //make user
        $newUser = new User;
        $newUser->name = $request->input('name');
        $newUser->email = $request->input('email');
        $newUser->password = Hash::make('newuser');
        $newUser->save();

        return redirect('/users')->with('successMessage', 'Gebruiker aangemaakt.');
    }


    //delete
    public function deleteUser($user_id) {
        $user = User::where('id', $user_id);
        $user->delete();

        return redirect('/users')->with('successMessage', 'Gebruiker verwijderd.');
    }


    //show update page
    public function showUpdateUser($user_id) {
        $user = User::where('id', $user_id)->first();
        $loggedInUser = Auth::user();
        $user_buildings = $user->building;
        $buildings = Building::all();

        return Inertia::render('Admin/AdminUpdateUsers', [
            'user' => $user,
            'LoggedInUser' => $loggedInUser,
            'user_buildings' => $user_buildings,
            'buildings' => $buildings,
        ]);
    }


    //update user
    public function updateUser(Request $request, $user_id) {
          //validate
          $request->validate([
            'name' => 'required|string',
            'email' => 'required|email|unique:users,email,'. $user_id,
            'building[]' => 'integer',
        ]);

        $loggedInUser = Auth::user();
        $selectedBuildings = $request->input('building');

        $user = User::where('id', $user_id)->first();
        $user->name = $request->input('name');
        $user->email = $request->input('email');
        // add data to pivot table
        for($i = 0; $i < count($selectedBuildings); $i++) {
        //     dd($i);
            // if($user->building[$i]->user_id && $user->building[$i]->building_id == $user->id && $selectedBuildings[$i]) {
            //     echo 'deze gebruiker heeft al zo een gebouw?';
            // } else {
                $user->building()->attach($selectedBuildings[$i]);
            // }
        };
        $user->save(); 

        return back()->with(['user', $user], ['LoggedInUser', $loggedInUser])->with('successMessage', 'Gebruiker aangepast.');
    }

}
