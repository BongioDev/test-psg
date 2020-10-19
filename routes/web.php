<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/


Route::middleware(['auth:sanctum', 'verified'])->get('/users', 'AdminController@showUsers');

Route::middleware(['auth:sanctum', 'verified'])->get('/buildings', 'UserController@showBuildingsUser');

//create user
Route::middleware(['auth:sanctum', 'verified'])->post('/users/create', 'AdminController@createUser');

//delete user
Route::middleware(['auth:sanctum', 'verified'])->post('/users/delete/{user_id}', 'AdminController@deleteUser');

//update user VIEW
Route::middleware(['auth:sanctum', 'verified'])->get('/users/updatePage/{user_id}', 'AdminController@showUpdateUser');

//update user
Route::middleware(['auth:sanctum', 'verified'])->patch('/users/updatePage/{user_id}/update', 'AdminController@updateUser');


Route::middleware(['auth:sanctum', 'verified'])->get('/dashboard', function () {
    return Inertia\Inertia::render('Dashboard');
})->name('dashboard');

Route::middleware(['auth:sanctum', 'verified'])->get('/', function () {
    return Inertia\Inertia::render('Home');
})->name('dashboard');
