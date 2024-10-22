<?php

namespace App\Http\Controllers\company\auth;

use App\Http\Controllers\Controller;
use App\Models\Company;
use App\Models\Manager;
use App\Models\Employee;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use App\Mail\company\forgotPassword;
use Illuminate\Support\Facades\Mail;


class CompanyAuthController extends Controller
{
    public function register(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:companies',
            'password' => 'required|string|min:8',
            'image' => 'nullable|image|mimes:jpeg,png,jpg|max:2048',
            'description' => 'nullable|string'
        ]);

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $imagePath = null;
        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $imageName = time() . '.' . $image->getClientOriginalExtension();
            $imagePath = $image->storeAs('/comapny/logo', $imageName, 'public');
        }

        $companies = Company::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'token' => generateUniqueIdentifier(),
            'image' => $imagePath, 
            'description' => $request->description
        ]);

        return response()->json(['companies' => $companies], 201);
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

        $company = Company::where('email', $request->email)->first();

        if (!$company || !Hash::check($request->password, $company->password)) {
            return response()->json(['message' => 'Invalid credentials'], 401);
        }

        $token = $company->createToken('company-auth-token')->plainTextToken;

        return response()->json(['company' => $company, 'token' => $token], 200);
    } 

    public function forgotPassword(Request $request)
    {
        $company = Company::where('email', $request->email)->first();
        if ($company) {
            $number=generateUniqueIdentifier();
            $details = [
                'name' => $company->name,
                'number' => $number
            ];
            $company->recover_password_opt = $number;
            $company->save();
            Mail::to($request->email)->send(new forgotPassword($details));
            return response()->json(['message' => 'Password Recover link sent successfully!'], 200);
        }else{
            return response()->json(['message' => "Invalid credentials"], 401);
        }
    }

    public function coordinates(Request $request)
    {
        $data=$request->user('company');
        $coordinates=json_decode($request->coordinates);
        $company = Company::where('id', $data->id)->first();
        if ($company) {
            $company->coordinates = $coordinates;
            $company->save();
            return response()->json(['message' => 'Save successfully!'], 200);

        }else{
            return response()->json(['message' => "Invalid credentials", 'data' => $data], 401);
        }
    }

    
    public function dashboard(Request $request)
    {
        $data=$request->user('company');
        $employee=Employee::where(['company_token'=>$data->token])->count();
        $manager=Manager::where(['company_token'=>$data->token])->count();
        return response()->json(['employee' => $employee, 'manager' => $manager], 200);

    }

     public function profilepasswordUpdate(Request $request)
    {
        $data=$request->user('company');
        $oldPassword=$request->oldPassword;
        $newPassword=$request->newPassword;

        $company = Company::where('id', $data->id)->first();
        if (!$company || !Hash::check($request->oldPassword, $company->password)) {
            return response()->json(['message' => 'Password not matched!'], 401);
        }

        $company->password = Hash::make($newPassword);
        $company->save();
        return response()->json(['data' => $company], 200);

    }

    public function profileUpdate(Request $request)
    {
        $data=$request->user('company');
        $name=$request->name;
        $description=$request->description;

        $imagePath = null;
        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $imageName = time() . '.' . $image->getClientOriginalExtension();
            $imagePath = $image->storeAs('/comapny/logo', $imageName, 'public');
        }

        $company = Company::where('id', $data->id)->first();
        if ($company) {
            $company->name = $name;
            $company->description = $description;
            $company->image = $imagePath;
            $company->save();
            return response()->json(['message' => 'Save successfully!', 'company'=>$company], 200);

        }else{
            return response()->json(['message' => "Invalid credentials"], 401);
        }
    }

    
    
}
