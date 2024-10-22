<?php

namespace App\Http\Controllers\manager\attendance;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Workinghours;
use App\Models\Attendance;
use App\Models\Leave;


class ManagerAttendanceController extends Controller
{
    public function fetchmanagerworkinghours(Request $request)
    {
        $data=$request->user('manager');
        $manager = Workinghours::where(['manager_id' => $data->id])->first();
        return response()->json(['data' =>  $manager], 200);

    }
     public function checkin(Request $request)
    {
        $data=$request->user('manager');
        $check_in_time=$request->check_in_time;
        $checking_time=$request->checking_time;
        $status=$request->status;
        $date=date("m-d-Y");
        $day=date("l");
        $manager_id=$data->id;

        $saveData['check_in_time'] = $check_in_time;
        $saveData['checking_time'] = $checking_time;
        $saveData['status'] = $status;
        $saveData['date'] = $date;
        $saveData['day'] = $day;
        $saveData['manager_id'] = $manager_id;
        $attendance = Attendance::create($saveData);
        return response()->json(['data' =>  $attendance], 200);

    }
    public function checkout(Request $request)
    {
        $data=$request->user('manager');
        $check_out_time=$request->check_out_time;
        $checkout_time=$request->checkout_time;
        $working_hours=$request->working_hours;
        $manager_id=$data->id;
        $id=$request->id;
        $saveData['check_out_time'] = $check_out_time;
        $saveData['checkout_time'] = $checkout_time;
        $saveData['working_hours'] = $working_hours;
        $attendance = Attendance::where(['manager_id' => $manager_id, 'id' => $id])->update($saveData);
        $updatedAttendance = Attendance::where(['manager_id' => $manager_id, 'id' => $id])->first();
        return response()->json(['data' =>  $updatedAttendance], 200);
    }
    public function fetchattendance(Request $request)
    {
        $data=$request->user('manager');
        $manager_id=$data->id;
        $attendance = Attendance::where(['manager_id' => $manager_id])->get();
        return response()->json(['data' =>  $attendance], 200);
    }
    
    public function fetchattendanceviadate(Request $request)
    {
        $data=$request->user('manager');
        $date=$request->date;
        $manager_id=$data->id;
        $attendance = Attendance::where(['manager_id' => $manager_id, 'date'=> $date])->first();
        return response()->json(['data' =>  $attendance], 200);
    }
    
       public function leave(Request $request)
    {
        $data=$request->user('manager');
        $saveData['manager_id'] = $data->id;
        $saveData['date'] = $request->date;
        $saveData['reason'] = $request->reason;
        $saveData['type'] = $request->type;
        $saveData['status'] = "pending";
        $leave = Leave::create($saveData);
        
        // $date=date("m-d-Y");
        // $day=date("l");
        // $saveDataa['status'] = "leave";
        // $saveDataa['date'] = $date;
        // $saveDataa['day'] = $day;
        // $saveDataa['leave_id'] = $leave['id'];
        // $saveDataa['manager_id'] = $data->id;
        // $attendance = Attendance::create($saveDataa);
        return response()->json(['data' =>  $leave], 200);
    }

     public function fetchleave(Request $request)
    {
        $data=$request->user('manager');
        $leave = Leave::where(['manager_id'=> $data['id']])->get();
        return response()->json(['data' =>  $leave], 200);
    }
    
}
