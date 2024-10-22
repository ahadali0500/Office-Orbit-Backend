<?php

namespace App\Http\Controllers\company;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Manager;
use App\Models\Department;
use App\Models\Workinghours;
use App\Models\Attendance;



class CompanyManagerController extends Controller
{
     public function managersdata(Request $request)
    {
        $data=$request->user('company');
        $manager = Manager::where('company_token', $data->token)->with(['department', 'company', 'workingHours'])->get();
        return response()->json(['data' =>  $manager], 200);
    }   
    public function managersdatasingle(Request $request)
    {
        $data=$request->user('company');
        $manager = Manager::where(['company_token' => $data->token, 'id' => $request->id])->with(['department', 'company','workingHours'])->get();
        
        $department = Department::get();

        return response()->json(['data' =>  $manager, 'department'=> $department], 200);
    }

    public function managersdataupdate(Request $request)
    {
        $data=$request->user('company');
        $status=$request->status;
        $departments=$request->departments;
        $id=$request->id;

        $manager = Manager::where(['company_token' => $data->token, 'id' => $request->id])->update([
            'status'=>$status,
            'department_id'=>$departments,
        ]);

        return response()->json(['data' =>  $manager], 200);
    }
     public function workinghours(Request $request)
    {
        try {
            // Retrieve user and employee data from request
            $data = $request->user('company');
            $manager_id = $request->id;
            
            // Retrieve input data from request
            $input = $request->only([
                'type', 'startTime', 'endTime', 'startBreakTime', 'endBreakTime',
                'partType', 'startpartTime', 'endpartTime'
            ]);
            
            // Check if workinghours record exists for the employee
            $workinghours = Workinghours::where('manager_id', $manager_id)->first();
            
            // Prepare data to be saved
            $saveData = [
                'type' => $input['type'],
                'startTime' => $input['startTime'],
                'endTime' => $input['endTime'],
                'startBreakTime' => $input['startBreakTime'],
                'endBreakTime' => $input['endBreakTime'],
                'partType' => $input['partType'],
                'startpartTime' => $input['startpartTime'],
                'endpartTime' => $input['endpartTime'],
            ];
            
            // If workinghours record exists, update it; otherwise, create a new one
            if ($workinghours) {
                $saveData['company_token'] = $data->token;
                $workinghours->update($saveData);
            } else {
                $saveData['company_token'] = $data->token;
                $saveData['manager_id'] = $manager_id;
                $workinghours = Workinghours::create($saveData);
            }
            return response()->json(['data' => $workinghours], 200);
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }

      public function getworkinghours(Request $request)
    {
        $data=$request->user('company');
        $manager_id=$request->id;
        $workinghours = Workinghours::where(['company_token' => $data->token, 'manager_id'=> $manager_id])->get();
        return response()->json(['data' =>  $workinghours], 200);
    }

    public function fetchManagerAttendance(Request $request)
    {
        $manager_id = $request->manager_id;
        $attendance = Attendance::where('manager_id', $manager_id)->get();
        $manager = Manager::findOrFail($manager_id);
        return response()->json(['data' => $attendance, 'manager' => $manager], 200);
    }

    
}
