<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

//Route::get('/', function () {return view('welcome');});
//Route::get('test', function () {return view('test');});
Route::resource('feedlist','FeedlistController');
Route::resource('feed','FeedController');
Route::resource('/','PagesController');
Route::resource('menu_item','MenuController');
Route::get('menu','PagesController@others');
Route::get('about','PagesController@about');
Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

