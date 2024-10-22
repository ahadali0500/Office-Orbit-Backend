<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Attendance extends Model
{
    use HasFactory;
     protected $fillable = [
        'check_in_time',
        'checking_time',
        'check_out_time',
        'checkout_time',
        'leave_id',
        'working_hours',
        'employee_id',
        'manager_id',
        'status',
        'date',
        'day',
    ];

    public function employee()
    {
        return $this->belongsTo(Employee::class, 'employee_id', 'id');
    }

    public function manager()
    {
        return $this->belongsTo(Manager::class, 'manager_id', 'id');
    }

      public function workingHours()
    {
        return $this->belongsTo(Workinghours::class, 'employee_id', 'id');
    }
}
