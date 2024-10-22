<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Workinghours extends Model
{
    use HasFactory;
    protected $fillable = [
        'type',
        'company_id',
        'employee_id',
        'manager_id',
        'startTime',
        'endTime',
        'startBreakTime',
        'endBreakTime',
        'partType',
        'startpartTime',
        'endpartTime',
        'company_token'
    ];
}
