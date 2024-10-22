<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Leave extends Model
{
    use HasFactory;
     protected $fillable = [
        'status',
        'reason',
        'type',
        'date',
        'employee_id',
        'manager_id',
    ];
}
