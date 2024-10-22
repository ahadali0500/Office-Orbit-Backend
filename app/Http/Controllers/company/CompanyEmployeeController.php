<?php

namespace App\Http\Controllers\company;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Employee;
use App\Models\Department;
use App\Models\Manager;
use App\Models\Workinghours;
use App\Models\Attendance;

class CompanyEmployeeController extends Controller
{
     public function employeedata(Request $request)
    {
        $data=$request->user('company');
        $employee = Employee::where('company_token', $data->token)->with(['department', 'company', 'manager', 'workingHours'])->get();
        return response()->json(['data' =>  $employee, 'company'=> $data], 200);
    }   
     
     public function employeedatasingle(Request $request)
    {
        $data=$request->user('company');
        $employee = Employee::where(['company_token' => $data->token, 'id' => $request->id])->with(['department', 'company', 'manager','workingHours'])->get();
        
        $department = Department::get();
        $manager = Manager::where(['company_token' => $data->token])->get();

        return response()->json(['data' =>  $employee, 'department'=> $department, 'manager'=>$manager], 200);
    }

    public function employeedataupdate(Request $request)
    {
        $data=$request->user('company');
        $status=$request->status;
        $departments=$request->departments;
        $manager=$request->manager;
        $id=$request->id;

        $employee = Employee::where(['company_token' => $data->token, 'id' => $request->id])->update([
            'status'=>$status,
            'department_id'=>$departments,
            'manager_id'=>$manager,

        ]);

        return response()->json(['data' =>  $employee], 200);
    }

    public function workinghours(Request $request)
    {
        try {
            // Retrieve user and employee data from request
            $data = $request->user('company');
            $employee_id = $request->id;
            
            // Retrieve input data from request
            $input = $request->only([
                'type', 'startTime', 'endTime', 'startBreakTime', 'endBreakTime',
                'partType', 'startpartTime', 'endpartTime'
            ]);
            
            // Check if workinghours record exists for the employee
            $workinghours = Workinghours::where('employee_id', $employee_id)->first();
            
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
                $saveData['employee_id'] = $employee_id;
                $workinghours = Workinghours::create($saveData);
            }
            return response()->json(['data' => $workinghours, 'company'=> $data->token], 200);
        } catch (\Exception $e) {
            return response()->json(['error' => $e->getMessage()], 500);
        }
    }
      public function getworkinghours(Request $request)
    {
        $data=$request->user('company');
        $employee_id=$request->id;
        $workinghours = Workinghours::where(['company_token' => $data->token, 'employee_id'=> $employee_id])->get();
        return response()->json(['data' =>  $workinghours], 200);
    } 
    
    public function fetchemployeeattendance(Request $request)
    {
        $employee_id=$request->employee_id;
        $attendance = Attendance::where(['employee_id'=> $employee_id])->get();
        $employee = Employee::findOrFail($employee_id);
        return response()->json(['data' =>  $attendance, 'employee'=>$employee], 200);
    } 


    
    
}
