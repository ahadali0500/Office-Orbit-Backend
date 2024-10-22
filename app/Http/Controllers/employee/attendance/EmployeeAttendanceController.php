<?php

namespace App\Http\Controllers\employee\attendance;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Workinghours;
use App\Models\Attendance;
use App\Models\Leave;


class EmployeeAttendanceController extends Controller
{
    public function fetchemployeeworkinghours(Request $request)
    {
        $data=$request->user('employee');
        $employee = Workinghours::where(['employee_id' => $data->id])->first();
        return response()->json(['data' =>  $employee], 200);

    }
     public function checkin(Request $request)
    {
        $data=$request->user('employee');
        $check_in_time=$request->check_in_time;
        $checking_time=$request->checking_time;
        $status=$request->status;
        $date=date("m-d-Y");
        $day=date("l");
        $employee_id=$data->id;

        $saveData['check_in_time'] = $check_in_time;
        $saveData['checking_time'] = $checking_time;
        $saveData['status'] = $status;
        $saveData['date'] = $date;
        $saveData['day'] = $day;
        $saveData['employee_id'] = $employee_id;
        $attendance = Attendance::create($saveData);
        return response()->json(['data' =>  $attendance], 200);

    }
   public function checkout(Request $request)
    {
        $data = $request->user('employee');
        $check_out_time = $request->input('check_out_time');
        $checkout_time = $request->input('checkout_time');
        $working_hours = $request->input('working_hours');
        $employee_id = $data->id;
        $id = $request->input('id');

        $saveData = [
            'check_out_time' => $check_out_time,
            'checkout_time' => $checkout_time,
            'working_hours' => $working_hours
        ];
        $attendanceUpdated = Attendance::where(['employee_id' => $employee_id, 'id' => $id])->update($saveData);
        $updatedAttendance = Attendance::where(['employee_id' => $employee_id, 'id' => $id])->first();
        if ($attendanceUpdated) {
            return response()->json(['status' => 1, 'message' => 'Checkout successful', 'data' => $updatedAttendance], 200);
        } else {
            return response()->json(['status' => 0, 'message' => 'Checkout failed', 'data' => null], 200);
        }
    }

    public function fetchattendance(Request $request)
    {
        $data=$request->user('employee');
        $employee_id=$data->id;
        $attendance = Attendance::where(['employee_id' => $employee_id])->get();
        return response()->json(['data' =>  $attendance], 200);
    }
    
    public function fetchattendanceviadate(Request $request)
    {
        $data=$request->user('employee');
        $date=$request->date;
        $employee_id=$data->id;
        $attendance = Attendance::where(['employee_id' => $employee_id, 'date'=> $date])->first();
        return response()->json(['data' =>  $attendance], 200);
    }
    
       public function leave(Request $request)
    {
        $data=$request->user('employee');
        $saveData['employee_id'] = $data->id;
        $saveData['date'] = $request->date;
        $saveData['type'] = $request->type;
        $saveData['reason'] = $request->reason;
        $saveData['status'] = "pending";
        $leave = Leave::create($saveData);
        
        // $date=date("m-d-Y");
        // $day=date("l");
        // $saveDataa['status'] = "leave";
        // $saveDataa['date'] = $date;
        // $saveDataa['day'] = $day;
        // $saveDataa['leave_id'] = $leave['id'];
        // $saveDataa['employee_id'] = $data->id;
        // $attendance = Attendance::create($saveDataa);
        return response()->json(['data' =>  $leave], 200);
    }
     
        public function fetchleave(Request $request)
    {
        $data=$request->user('employee');
        $leave = Leave::where(['employee_id'=> $data['id']])->get();
        return response()->json(['data' =>  $leave], 200);
    }
}
