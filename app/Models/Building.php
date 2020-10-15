<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Building extends Model
{
    use HasFactory;

    public function room() {
        return $this->hasMany('App\Models\Room');
    }

    public function user() {
        return $this->hasMany('App\Models\User');
    }
    
}
