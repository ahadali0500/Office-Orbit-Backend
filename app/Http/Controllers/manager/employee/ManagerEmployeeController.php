<?php
namespace App\Http\Controllers\manager\employee;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Workinghours;
use App\Models\Attendance;
use App\Models\Employee;
use App\Models\Leave;

class ManagerEmployeeController extends Controller
{
    public function fetchemployeeattendance(Request $request)
    {
        $data = $request->user('manager');
        $attendance = Attendance::where(['manager_id' => $data->id])->with('workingHours')->get();
        return response()->json(['data' => $attendance], 200);
    }

    public function fetchemployeeattendancesingle(Request $request)
    {
        $data = $request->user('manager');
        $employeeId = $request->employeeId;
        $attendance = Attendance::where(['employee_id' => $employeeId])->with('workingHours')->get();
        return response()->json(['data' => $attendance], 200);
    }

    public function fetchemployee(Request $request)
    {
        $data = $request->user('manager');
        $employee = Employee::where(['manager_id' => $data->id])->with('workingHours','department')->get();
        return response()->json(['data' => $employee], 200);
    }

    public function fetchemployeeleavesingle(Request $request)
    {
        $data = $request->user('manager');
        $employeeId = $request->employeeId;
        $leave = Leave::where(['employee_id' => $employeeId,  'status'=> 'pending'])->get();
        return response()->json(['data' => $leave], 200);
    }

    public function employeeleavestatus(Request $request)
    {
        $data = $request->user('manager');
        $leavesId = $request->leavesId;
        $status = $request->status;

        // Updating the status using Eloquent
        $affectedRows = Leave::where('id', $leavesId)
            ->update(['status' => $status]);

        // Return the response with the number of affected rows
        return response()->json(['message' => 'Leave status updated successfully', 'affected_rows' => $affectedRows], 200);
    }


    
}
