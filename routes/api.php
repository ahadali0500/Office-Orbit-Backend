<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Hash;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:api')->get('/user', function (Request $request) {
//     return $request->user();
// });

use App\Http\Controllers\employee\auth\EmployeeAuthController;
use App\Http\Controllers\employee\EmployeeProjectController;



use App\Http\Controllers\manager\auth\ManagerAuthController;
use App\Http\Controllers\company\auth\CompanyAuthController;
use App\Http\Controllers\company\CompanyProjectController;

use App\Http\Controllers\company\CompanyManagerController;
use App\Http\Controllers\company\CompanyEmployeeController;
use App\Http\Controllers\employee\attendance\EmployeeAttendanceController;
use App\Http\Controllers\manager\attendance\ManagerAttendanceController;
use App\Http\Controllers\manager\employee\ManagerEmployeeController;
use App\Http\Controllers\manager\ManagerProjectController;
use App\Http\Controllers\general\GeneralController;


Route::post('/employee/register', [EmployeeAuthController::class, 'register']);
Route::post('/employee/login', [EmployeeAuthController::class, 'login']);
Route::post('/employee/forgot-password', [EmployeeAuthController::class, 'forgotPassword']);


Route::post('/manager/register', [ManagerAuthController::class, 'register']);
Route::post('/manager/login', [ManagerAuthController::class, 'login']);
Route::post('/manager/forgot-password', [ManagerAuthController::class, 'forgotPassword']);

Route::post('/company/register', [CompanyAuthController::class, 'register']);
Route::post('/company/login', [CompanyAuthController::class, 'login']);
Route::post('/company/forgot-password', [CompanyAuthController::class, 'forgotPassword']);

//General APIs
Route::get('/general/company/get', [GeneralController::class, 'getCompany']);

// Route::middleware('auth:sanctum,employee')->get('/employee', function (Request $request) {
//     return $request->user('employee');
// });

Route::middleware('auth:sanctum,employee')->group(function () {
    Route::get('/employee/logout', function (Request $request) {
        $request->user('employee')->currentAccessToken()->delete();
        return response()->json(['message' => 'Logged out successfully'], 200);
    });
    Route::get('/employee/working-hours/get', [EmployeeAttendanceController::class, 'fetchemployeeworkinghours']);
    Route::post('/employee/check-in', [EmployeeAttendanceController::class, 'checkin']);
    Route::post('/employee/check-out', [EmployeeAttendanceController::class, 'checkout']);
    Route::get('/employee/attendance/fetch', [EmployeeAttendanceController::class, 'fetchattendance']);
    Route::post('/employee/attendance/date/fetch', [EmployeeAttendanceController::class, 'fetchattendanceviadate']);
    Route::post('/employee/leave', [EmployeeAttendanceController::class, 'fetchleave']);
    Route::post('/employee/leave/apply', [EmployeeAttendanceController::class, 'leave']);

    Route::get('/employee/dashboard', function (Request $request) {
        // Employee dashboard logic
    });

    Route::get('/employee/project', [EmployeeProjectController::class, 'project']);
    Route::post('/employee/project/modules', [EmployeeProjectController::class, 'modules']);
    Route::post('/employee/project/reporting', [EmployeeProjectController::class, 'reporting']);
    Route::post('/employee/project/reporting/fetch', [EmployeeProjectController::class, 'fetchreports']);
    Route::post('/employee/project/reporting/fetch/{date}', [EmployeeProjectController::class, 'fetchreportdate']);

});

Route::middleware('auth:sanctum,manager')->group(function () {
    Route::get('/manager/logout', function (Request $request) {
        $request->user('manager')->currentAccessToken()->delete();
        return response()->json(['message' => 'Logged out successfully'], 200);
    });

    Route::post('/manager/check-in', [ManagerAttendanceController::class, 'checkin']);
    Route::post('/manager/check-out', [ManagerAttendanceController::class, 'checkout']);
    Route::get('/manager/attendance/fetch', [ManagerAttendanceController::class, 'fetchattendance']);
    Route::post('/manager/attendance/date/fetch', [ManagerAttendanceController::class, 'fetchattendanceviadate']);
    Route::get('/manager/working-hours/get', [ManagerAttendanceController::class, 'fetchmanagerworkinghours']);
    Route::post('/manager/leave/apply', [ManagerAttendanceController::class, 'leave']);
    Route::post('/manager/leave', [ManagerAttendanceController::class, 'fetchleave']);

    Route::get('/manager/employee', [ManagerEmployeeController::class, 'fetchemployee']);
    Route::get('/manager/employee/attendance', [ManagerEmployeeController::class, 'fetchemployeeattendance']);
    Route::get('/manager/employee/attendance/{employeeId}', [ManagerEmployeeController::class, 'fetchemployeeattendancesingle']);
    
    Route::get('/manager/employee/leave/{employeeId}', [ManagerEmployeeController::class, 'fetchemployeeleavesingle']);
    Route::post('/manager/employee/leave/status', [ManagerEmployeeController::class, 'employeeleavestatus']);

    // project
    Route::post('/manager/project/modules/create', [ManagerProjectController::class, 'createmodules']);
    Route::post('/manager/project/modules/update', [ManagerProjectController::class, 'updatemodules']);
    Route::post('/manager/project/modules', [ManagerProjectController::class, 'fetchmodules']);
    Route::post('/manager/project/teammate', [ManagerProjectController::class, 'fetchTeammates']);
    Route::post('/manager/project/modules/team/assign', [ManagerProjectController::class, 'createteammates']);
    Route::get('/manager/project', [ManagerProjectController::class, 'fetchall']);
    Route::post('/manager/project/feedback', [ManagerProjectController::class, 'feedback']);    
    Route::post('/manager/project/employeeprojectmodules', [ManagerProjectController::class, 'fetchProjectModules']);
    Route::post('/manager/project/employeeprojects', [ManagerProjectController::class, 'fetchEmployeeProjectsByTeammate']);    
    Route::post('/manager/project/status', [ManagerProjectController::class, 'updateProjectStatus']);



    Route::get('/manager/dashboard', function (Request $request) {
        // Manager dashboard logic
    });
});

Route::middleware('auth:sanctum,company')->group(function () {
    Route::get('/company/logout', function (Request $request) {
        $request->user('company')->currentAccessToken()->delete();
        return response()->json(['message' => 'Logged out successfully'], 200);
    });

    Route::get('/company/department', [CompanyManagerController::class, 'managersdata']);
    Route::get('/company/department/{id}', [CompanyManagerController::class, 'managersdata']);
    Route::post('/company/department/create', [CompanyManagerController::class, 'managersdata']);
    Route::post('/company/department/update', [CompanyManagerController::class, 'managersdata']);


    Route::post('/company/coordinates', [CompanyAuthController::class, 'coordinates']);
    Route::get('/company/manager/get', [CompanyManagerController::class, 'managersdata']);
    Route::get('/company/manager/get/{id}', [CompanyManagerController::class, 'managersdatasingle']);
    Route::post('/company/manager/update/{id}', [CompanyManagerController::class, 'managersdataupdate']);
    Route::post('/company/manager/working-hours/update/{id}', [CompanyManagerController::class, 'workinghours']);
    Route::get('/company/manager/working-hours/get/{id}', [CompanyManagerController::class, 'getworkinghours']);

    Route::get('/company/employee/get', [CompanyEmployeeController::class, 'employeedata']);
    Route::get('/company/employee/get/{id}', [CompanyEmployeeController::class, 'employeedatasingle']);
    Route::post('/company/employee/update/{id}', [CompanyEmployeeController::class, 'employeedataupdate']);
    Route::post('/company/employee/working-hours/update/{id}', [CompanyEmployeeController::class, 'workinghours']);
    Route::get('/company/employee/working-hours/get/{id}', [CompanyEmployeeController::class, 'getworkinghours']);

    Route::get('/company/dashboard', [CompanyAuthController::class, 'dashboard']);

    Route::post('/company/employee/attendance', [CompanyEmployeeController::class, 'fetchemployeeattendance']);
    Route::post('/company/manager/attendance', [CompanyManagerController::class, 'fetchmanagerattendance']);
   
   // projects
    Route::post('/company/project/add', [CompanyProjectController::class, 'add']);
    Route::get('/company/project', [CompanyProjectController::class, 'fetchallproject']);
    Route::get('/company/project/{id}', [CompanyProjectController::class, 'fetchsingleproject']);
    Route::post('/company/project/update/{id}', [CompanyProjectController::class, 'update']);
    Route::get('/company/project/modules/{project_id}', [CompanyProjectController::class, 'fetchallmodule']);
    Route::get('/company/project/modules/team/{project_id}/{module_id}', [CompanyProjectController::class, 'fetchallteam']);
    Route::post('/company/project/reports/fetch', [CompanyProjectController::class, 'fetchreports']);

   // profile
    Route::post('/company/profile/update', [CompanyAuthController::class, 'profileUpdate']);
    Route::post('/company/profile/password/update', [CompanyAuthController::class, 'profilepasswordUpdate']);
});