<?php

namespace App\Http\Controllers\general;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Company;

class GeneralController extends Controller
{
     public function getCompany(Request $request)
    {
        $data=$request->user('company');
        $company = Company::where('coordinates', '!=', '')->get();
        return response()->json(['data' =>  $company], 200);

    }   
}
