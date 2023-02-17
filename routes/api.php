<?php

use App\Http\Controllers\PostController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;


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

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::get('/posts',[PostController::class,'index']);
Route::post('/post/store',[PostController::class,'store']);
Route::get('/post/{id}',[PostController::class,'show']);
Route::get('/post/edit/{id}',[PostController::class,'edit']);
Route::put('/post/update/{id}',[PostController::class,'update']);
Route::delete('/post/delete/{id}',[PostController::class,'destroy']);
