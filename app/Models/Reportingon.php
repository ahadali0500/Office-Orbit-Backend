<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Reportingon extends Model
{
    use HasFactory;

    protected $fillable = [
        'project_id',
        'modules_id',
        'teammate_id',
        'title',
        'description',
        'file',
        'date',
        'managerFeedback'
        
        
    ];
}
