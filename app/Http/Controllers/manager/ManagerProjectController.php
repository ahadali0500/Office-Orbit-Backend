<?php
namespace App\Http\Controllers\manager;

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




class ManagerProjectController extends Controller
{
     public function createmodules(Request $request)
    {
        $datasaved['company_id']=$request->company_id;
        $datasaved['project_id']=$request->project_id;
        $datasaved['name']=$request->name;
        $datasaved['description']=$request->description;
        $datasaved['startingDate']=$request->startingDate;
        $datasaved['endingDate']=$request->endingDate;

        $imagePath = null;
        if ($request->hasFile('file')) {
            $image = $request->file('file');
            $imageName = time() . '.' . $image->getClientOriginalExtension();
            $imagePath = $image->storeAs('/comapny/project/modules', $imageName, 'public');
        }
        $datasaved['file']=$imagePath;

        $modules = Module::create($datasaved);
        return response()->json(['data' =>  $modules], 200);
    }

     public function updatemodules(Request $request)
    {
        $datasaved['company_id']=$request->company_id;
        $datasaved['project_id']=$request->project_id;
        $datasaved['name']=$request->name;
        $datasaved['description']=$request->description;
        $datasaved['startingDate']=$request->startingDate;
        $datasaved['endingDate']=$request->endingDate;
        $module_id=$request->module_id;

        if ($request->hasFile('file')) {
            $image = $request->file('file');
            $imageName = time() . '.' . $image->getClientOriginalExtension();
            $imagePath = $image->storeAs('/comapny/project/modules', $imageName, 'public');
            $datasaved['file']=$imagePath;
        }

        $module = Module::find($module_id); 
        if ($module) {
            $module->update($datasaved);
        }       
        return response()->json(['data' =>  $module], 200);
    }

    

    public function createteammates(Request $request)
    {
        $datasaved['project_id']=$request->project_id;
        $datasaved['modules_id']=$request->modules_id;
        $datasaved['employee_id']=$request->employee_id;

        $teammates = Teammate::create($datasaved);
        $teammates->load(['employee']);

        return response()->json(['data' =>  $teammates], 200);
    }

    // public function createteammatesoff(Request $request)
    // {
    //     $datasaved['project_id']=$request->project_id;
    //     $datasaved['modules_id']=$request->modules_id;
    //     $datasaved['employee_id']=$request->employee_id;

    //     $teammates = Teammate::create($datasaved);
    //     return response()->json(['data' =>  $teammates], 200);
    // }

    public function fetchall(Request $request)
    {
        $data = $request->user('manager');
        $manager_id=$data['id'];

        $project = Project::where('manager_id', $manager_id)
            ->where('status', '!=', 'Rejected')
            ->with(['modules.teammates'])
            ->get();
        return response()->json(['data' =>  $project], 200);
    }

    public function fetchEmployeeProjectsByTeammate(Request $request)
    {
    // Get employee_id from request
        $employee_id = $request->input('employee_id');

    // Fetch project IDs from the teammates table for the given employee_id
        $project_ids = Teammate::where('employee_id', $employee_id)
        ->pluck('project_id')
        ->toArray();

    // Fetch the project details for the obtained project_ids
        $projects = Project::whereIn('id', $project_ids)
        ->where('status', '!=', 'Rejected')
        ->with(['modules.teammates'])
        ->get();

        return response()->json(['data' => $projects], 200);
    }

    public function fetchProjectModules(Request $request)
    {
        $employee_id = $request->input('employee_id');
        $project_id = $request->input('project_id');
        $modules = Module::where('project_id', $project_id)->get();
        $modules = $modules->map(function ($module) use ($employee_id, $project_id) {
            $isAssigned = Teammate::where('modules_id', $module->id)
                ->where('employee_id', $employee_id)
                ->where('project_id', $project_id)
                ->exists();
            $module->assign = $isAssigned ? true : false;
            return $module;
    });
    return response()->json(['data' => $modules], 200);
    }



    public function fetchmodules(Request $request)
    {
        $data = $request->user('manager');
        $project_id=$request->project_id;

        $module = Module::where(['project_id'=>$project_id])->with(['teammate'])->get();
        return response()->json(['data' =>  $module], 200);
    }

      public function feedback(Request $request)
    {
        $data = $request->user('manager');
        $report_id=$request->report_id;           
        $datasaved['managerFeedback']=$request->feedback;
        
        $reportingon = Reportingon::find($report_id); 
        if ($reportingon) {
            $reportingon->update($datasaved);
        }  
        
        return response()->json(['data' =>  $reportingon], 200);
    }

      public function fetchTeammates(Request $request)
    {
        $data = $request->user('manager');
        $project_id=$request->project_id;

 
        $teammate = Teammate::where(['project_id'=>$project_id])->with(['employee'])->get();
        return response()->json(['data' =>  $teammate], 200);
    }

    public function updateProjectStatus(Request $request)
    {
        $project_id=$request->project_id;
        $status=$request->status;

        $project = Project::where(['id'=>$project_id])->update(['status'=>$status]);
        return response()->json(['data' =>  $project], 200);
    }

    // public function fetchallmodules(Request $request)
    // {
    //     $data=$request->user('company');
    //     $project = Project::where(['company_id'=>$data->id])->with(['manager'])->get();
    //     return response()->json(['data' =>  $project], 200);
    // }  

    //  public function fetchsingleproject(Request $request)
    // {
    //     $data=$request->user('company');
    //     $project_id=$request->id;
    //     $project = Project::where(['id'=>$project_id, 'company_id'=>$data->id])->first();
    //     return response()->json(['data' =>  $project], 200);
    // }           
}
