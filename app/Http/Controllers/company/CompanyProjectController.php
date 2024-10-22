<?php

namespace App\Http\Controllers\company;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Employee;
use App\Models\Department;
use App\Models\Manager;
use App\Models\Workinghours;
use App\Models\Attendance;
use App\Models\Project;
use App\Models\Module;
use App\Models\Teammate;
use App\Models\Reportingon;


class CompanyProjectController extends Controller
{
     public function add(Request $request)
    {
        $data=$request->user('company');
        $datasaved['company_id']=$data->id;
        $datasaved['manager_id']=$request->manager_id;
        $datasaved['name']=$request->name;
        $datasaved['description']=$request->description;
        $datasaved['start_date']=$request->start_date;
        $datasaved['meetup_date']=$request->meetup_date;
        $datasaved['working_percentage']=$request->working_percentage;

        $imagePath = null;
        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $imageName = time() . '.' . $image->getClientOriginalExtension();
            $imagePath = $image->storeAs('/comapny/project', $imageName, 'public');
        }
        $datasaved['image']=$imagePath;

        $project = Project::create($datasaved);
        return response()->json(['data' =>  $project], 200);
    }

    public function fetchallproject(Request $request)
    {
        $data=$request->user('company');
        $project = Project::where(['company_id'=>$data->id])->with(['manager'])->get();
        return response()->json(['data' =>  $project], 200);
    }  

     public function fetchsingleproject(Request $request)
    {
        $data=$request->user('company');
        $project_id=$request->id;
        $project = Project::where(['id'=>$project_id, 'company_id'=>$data->id])->first();
        return response()->json(['data' =>  $project], 200);
    }  

      public function update(Request $request)
    {
        $data = $request->user('company');
        $datasaved['company_id'] = $data->id;
        $datasaved['manager_id'] = $request->manager_id;
        $datasaved['name'] = $request->name;
        $datasaved['description'] = $request->description;
        $datasaved['start_date'] = $request->start_date;
        $datasaved['meetup_date'] = $request->meetup_date;
        $datasaved['working_percentage'] = $request->working_percentage;
        $project_id = $request->id;
        
        // Check if the request has an image file and handle it if present
        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $imageName = time() . '.' . $image->getClientOriginalExtension();
            $imagePath = $image->storeAs('/company/project', $imageName, 'public');
            $datasaved['image'] = $imagePath; // Save the image path to the $datasaved array
        }
        $project = Project::find($project_id);
        if (!$project) {
            return response()->json(['error' => 'Project not found'], 404);
        }
        $project->update($datasaved);
        return response()->json(['data' => $project], 200);
    }

     public function fetchallmodule(Request $request)
    {
        $data=$request->user('company');
        $project_id = $request->project_id;
        $module = Module::where(['project_id'=>$project_id])->get();
        return response()->json(['data' =>  $module], 200);
    }  
    public function fetchallteam(Request $request)
    {
        $data=$request->user('company');
        $project_id = $request->project_id;
        $module_id = $request->module_id;
        $teammate = Teammate::where(['project_id'=>$project_id, 'modules_id'=>$module_id])->with(['employee'])->get();
        return response()->json(['data' =>  $teammate], 200);
    }  

     public function fetchreports(Request $request)
    {

        $reportingon = Reportingon::where([
            'project_id' => $request->project_id,
            'modules_id' => $request->modules_id,
            'teammate_id' => $request->teammate_id,
        ])->get();
        return response()->json(['data' => $reportingon], 200);
    }

  
         
}
