<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Laravel\Sanctum\HasApiTokens;
use Illuminate\Notifications\Notifiable;

class Employee extends Model
{
    use HasApiTokens, HasFactory, Notifiable;

    use HasApiTokens, HasFactory, Notifiable;
    protected $fillable = [
        'department_id',
        'manager_id',
        'company_token',
        'name',
        'email',
        'password',
        'image',
        'status',
        'join_date',
        'end_date'

    ];
    
    protected $hidden = [
        'password',
    ];
    
    public function department()
    {
        return $this->belongsTo(Department::class);
    }
    public function manager()
    {
        return $this->belongsTo(Manager::class);
    }
    public function company()
    {
        return $this->belongsTo(Company::class, 'company_token', 'token');
    }
    public function workingHours()
    {
        return $this->hasOne(Workinghours::class, 'employee_id', 'id');
    }

    
}
