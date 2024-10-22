<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Laravel\Sanctum\HasApiTokens;
use Illuminate\Notifications\Notifiable;

class Manager extends Model
{
    use HasApiTokens, HasFactory, Notifiable;
    protected $fillable = [
        'department_id',
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
    public function company()
    {
        return $this->belongsTo(Company::class, 'company_token', 'token');
    }
     public function workingHours()
    {
        return $this->belongsTo(Workinghours::class, 'id', 'manager_id');
    }
}
