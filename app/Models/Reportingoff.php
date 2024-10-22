<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Reportingoff extends Model
{
    use HasFactory;
       protected $fillable = [
        'project_id',
        'teammate_id',
        'description',
        'file',
    ];
}
