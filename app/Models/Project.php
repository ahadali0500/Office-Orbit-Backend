<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Project extends Model
{
    use HasFactory;
       protected $fillable = [
        'company_id',
        'manager_id',
        'name',
        'description',
        'image',
        'start_date',
        'meetup_date',
        'working_percentage',
        'module_status',
    ];
    
    public function manager()
    {
        return $this->belongsTo(Manager::class, 'manager_id', 'id');
    }

     public function modules()
    {
        return $this->hasMany(Module::class, 'project_id', 'id');
    }
    
}
