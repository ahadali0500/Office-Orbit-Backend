<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Module extends Model
{
    use HasFactory;

     protected $fillable = [
        'company_id',
        'project_id',
        'name',
        'description',
        'file',
        'startingDate',
        'endingDate',
    ];

       public function teammate()
    {
        return $this->hasMany(Teammate::class, 'modules_id', 'id');
    }

    public function project()
    {
        return $this->belongsTo(Project::class, 'project_id', 'id');
    }

    public function teammates()
    {
        return $this->hasMany(Teammate::class, 'modules_id', 'id'); // Ensure 'module_id' matches your DB schema
    }
}
