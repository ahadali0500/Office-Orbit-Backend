<?php

namespace App\Http\Controllers\manager\auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use App\Models\Manager;
use App\Models\Department;
use App\Mail\manager\forgotPassword;
use Illuminate\Support\Facades\Mail;

class ManagerAuthController extends Controller
{
    public function register(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'company_token' => 'required',
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:managers',
            'password' => 'required|string|min:8',

        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors(), 'code'=> 400], 400);
        }

        $imagePath = null;
        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $imageName = time() . '.' . $image->getClientOriginalExtension();
            $imagePath = $image->storeAs('/manager/image/', $imageName, 'public');
        }

        $manager = Manager::create([
            'company_token' => $request->company_token,
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'image' => $imagePath,
            'join_date'=> date('y-m-d')
        ]);

        return response()->json(['manager' => $manager, 'code'=> 200], 200);
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

        $manager = Manager::where('email', $request->email)->first();

        if (!$manager || !Hash::check($request->password, $manager->password)) {
            return response()->json(['message' => 'Invalid credentials'], 401);
        }
        $department = Department::where('id', $manager->department_id)->first();
        $token = $manager->createToken('auth-token')->plainTextToken;
        return response()->json(['manager' => $manager, 'department' => $department, 'token' => $token], 200);
    } 

    public function forgotPassword(Request $request)
    {
        $manager = Manager::where('email', $request->email)->first();
        
        if ($manager) {
            $number=generateUniqueIdentifier();
            $details = [
                'name' => $manager->name,
                'number' => $number
            ];
            $manager->recover_password_opt = $number;
            $manager->save();
            Mail::to($request->email)->send(new forgotPassword($details));
            return response()->json(['message' => 'Password Recover link sent successfully!'], 200);
        }else{
            return response()->json(['message' => "Invalid credentials"], 401);
        }
    } 
}
