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

        return Inertia::render('Admin/AdminUsers', [
            'users' => $users,
            'LoggedInUser' => $loggedInUser,
            'buildings' => $buildings,
        ]);
    }

    //create
    public function createUser(Request $request) {
        //validate
        $request->validate([
            'name' => 'required|string',
            'email' => 'required|email|unique:users',
            // 'building' => 'required',
        ]);

        // $building = Building::where('name', $request->input('building'))->first();

        //make user
        $newUser = new User;
        $newUser->name = $request->input('name');
        $newUser->email = $request->input('email');
        // $newUser->building_id = $building->id;
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

        return Inertia::render('Admin/AdminUpdateUsers', [
            'user' => $user,
            'LoggedInUser' => $loggedInUser,
        ]);
    }

    //update user
    public function updateUser(Request $request, $user_id) {
          //validate
          $request->validate([
            'name' => 'required|string',
            'email' => 'required|email|unique:users,email,'. $user_id,
        ]);

        $loggedInUser = Auth::user();

        $user = User::where('id', $user_id)->first();
        $user->name = $request->input('name');
        $user->email = $request->input('email');
        $user->save();

        return back()->with(['user', $user], ['LoggedInUser', $loggedInUser])->with('successMessage', 'Gebruiker aangepast.');
    }

}
