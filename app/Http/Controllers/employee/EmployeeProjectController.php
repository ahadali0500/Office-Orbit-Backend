<?php

namespace App\Http\Controllers\employee;

use App\Http\Controllers\Controller;
use App\Models\Employee;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use App\Mail\employee\forgotPassword;
use Illuminate\Support\Facades\Mail;  
use App\Models\Reportingon;
use App\Models\Project;
use App\Models\Teammate;
use App\Models\Module;


class EmployeeProjectController extends Controller
{
    public function register(Request $request)
    {
        try {
            $validator = Validator::make($request->all(), [
            'company_token' => 'required',
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:employees',
            'password' => 'required|string|min:8',
            'image' => 'nullable|image|mimes:jpeg,png,jpg|max:2048',
            ]);

            if ($validator->fails()) {
                return response()->json(['errors' => $validator->errors()], 422);
            }

            $imagePath = null;
            if ($request->hasFile('image')) {
                $image = $request->file('image');
                $imageName = time() . '.' . $image->getClientOriginalExtension();
                $imagePath = $image->storeAs('/manager/employee/', $imageName, 'public');
            }

            $employee = Employee::create([
                'company_token' => $request->company_token,
                'name' => $request->name,
                'email' => $request->email,
                'password' => Hash::make($request->password),
                'image' => $imagePath,
                'join_date'=> date('y-m-d')
            ]);

            return response()->json(['employee' => $employee], 201);
        } catch (\Throwable $th) {
            //throw $th;
            return response()->json(['message' => $th], 400);
        }
    }

    public function reporting(Request $request)
    {
        $imagePath = null;
        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $imageName = time() . '.' . $image->getClientOriginalExtension();
            $imagePath = $image->storeAs('/company/project/modules/report', $imageName, 'public');
        }
        $date=date('Y-m-d');
        $reportingon = Reportingon::create([
            'project_id' => $request->project_id,
            'modules_id' => $request->modules_id,
            'teammate_id' => $request->teammate_id,
            'title' => $request->title,
            'description' => $request->description,
            'file' => $imagePath,
            'date' => $date,
        ]);
        return response()->json(['data' => $reportingon], 200);
    }


     public function fetchreports(Request $request)
    {
        $data = $request->user('employee');
        $reportingon = Reportingon::where([
            'project_id' => $request->project_id,
            'modules_id' => $request->modules_id,
            'teammate_id' => $request->teammate_id,
        ])->get();
        return response()->json(['data' => $reportingon], 200);
    }

     public function fetchreportdate(Request $request)
    {

        $reportingon = Reportingon::where([
            'project_id' => $request->project_id,
            'modules_id' => $request->modules_id,
            'teammate_id' => $request->teammate_id,
            'date' => $request->date,
        ])->get();
        return response()->json(['data' => $reportingon], 200);
    }

    public function project(Request $request)
    {
        $data = $request->user('employee');

        // Get unique project_id records as a simple array
        $projectIds = Teammate::where('employee_id', $data['id'])
                        ->distinct()
                        ->pluck('project_id')
                        ->toArray(); // Convert the collection to a simple array
        $projects = Project::whereIn('id', $projectIds)->with(['modules'])->get();
        return response()->json(['data' => $projects], 200);
    }


   public function modules(Request $request)
    {
        $data = $request->user('employee');
        $project_id=$request->project_id;

        $module = Module::where(['project_id'=>$project_id])->get();
        return response()->json(['data' =>  $module], 200);
    }




   
}
