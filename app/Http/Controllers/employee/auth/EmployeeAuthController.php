<?php

namespace App\Http\Controllers\employee\auth;

use App\Http\Controllers\Controller;
use App\Models\Employee;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use App\Mail\employee\forgotPassword;
use Illuminate\Support\Facades\Mail;
use App\Models\Department;
use App\Models\Manager;

class EmployeeAuthController extends Controller
{
    public function register(Request $request)
    {
        try {
            $validator = Validator::make($request->all(), [
            'company_token' => 'required',
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:employees',
            'password' => 'required|string|min:8',
            ]);

            if ($validator->fails()) {
                return response()->json(['errors' => $validator->errors(), 'code'=> 400], 422);
            }

            $imagePath = null;
            if ($request->hasFile('image')) {
                $image = $request->file('image');
                $imageName = time() . '.' . $image->getClientOriginalExtension();
                $imagePath = $image->storeAs('/manager/employee', $imageName, 'public');
            }

            $employee = Employee::create([
                'company_token' => $request->company_token,
                'name' => $request->name,
                'email' => $request->email,
                'password' => Hash::make($request->password),
                'image' => $imagePath,
                'join_date'=> date('y-m-d')
            ]);
            return response()->json(['employee' => $employee , 'code'=> 200], 201);
        } catch (\Throwable $th) {
            //throw $th;
            return response()->json(['message' => $th, 'code'=> 400], 400);
        }

       

    }

    public function login(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required|string|email',
            'password' => 'required|string',
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $employee = Employee::where('email', $request->email)->first();

        if (!$employee || !Hash::check($request->password, $employee->password)) {
            return response()->json(['message' => 'Invalid credentials'], 401);
        }

        $department = Department::where('id', $employee->department_id)->first();
        $manager = Manager::where('id', $employee->manager_id)->first();
        $token = $employee->createToken('auth-token')->plainTextToken;

        return response()->json(['employee' => $employee,'department'=>$department, 'token' => $token, 'manager'=>$manager], 200);
    }

    public function forgotPassword(Request $request)
    {
        $employee = Employee::where('email', $request->email)->first();
        if ($employee) {
            $number=generateUniqueIdentifier();
            $details = [
                'name' => $employee->name,
                'number' => $number
            ];
            $employee->recover_password_opt = $number;
            $employee->save();
            //Mail::to($request->email)->send(new forgotPassword($details));
            return response()->json(['message' => 'Password Recover link sent successfully!'], 200);
        }else{
            return response()->json(['message' => "Invalid credentials"], 401);
        }
    } 
}
