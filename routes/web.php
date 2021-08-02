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

// Route::get('/', function () {
//     return redirect('/index');
// });

Route::get('/', 'QovexController@logout');
// Route::get('/Web-login', 'Website\MainController@login');
// Route::get('/Web-register', 'Website\MainController@register');
// Route::post('/Register-submit', 'Website\MainController@register_submit');
// Route::post('/Login-submit', 'Website\MainController@login_submit');

/*   Student login Registration      */
// Route::get('/Student-login', 'Student\StudentController@index');
Route::get('/Student-register', 'Student\StudentController@register');

Route::middleware(['auth','User'])->group(function() {
    Route::get('/', 'Student\StudentController@index');

    Route::get('resume-page-one', 'Student\StudentController@resume_page_one');
    Route::get('resume-page-two', 'Student\StudentController@resume_page_two');
    Route::get('resume-training-Info', 'Student\StudentController@resume_trainingInfo');
    
    Route::post('Basic-Info', 'Student\StudentController@submit_BasicInfo');
    Route::post('Academics-Info', 'Student\StudentController@submit_AcademicsInfo');

});

Auth::routes();
Route::get('logout', 'QovexController@logout');

Route::get('pages-login', 'QovexController@index');
Route::get('pages-login-2', 'QovexController@index');
Route::get('pages-register', 'QovexController@index');
Route::get('pages-register-2', 'QovexController@index');
Route::get('pages-recoverpw', 'QovexController@index');
Route::get('pages-recoverpw-2', 'QovexController@index');
Route::get('pages-lock-screen', 'QovexController@index');
Route::get('pages-lock-screen-2', 'QovexController@index');
Route::get('pages-404', 'QovexController@index');
Route::get('pages-500', 'QovexController@index');
Route::get('pages-maintenance', 'QovexController@index');
Route::get('pages-comingsoon', 'QovexController@index');
Route::post('login-status', 'QovexController@checkStatus');
// Route::get('admin-list', 'AdminController@admin_list');
// Route::get('user-list', 'AdminController@user_list');
Route::get('categories-list', 'AdminController@categories_list');
Route::get('edit-categories/{id}', 'AdminController@editcategories');
Route::get('add-categories', 'AdminController@addcategories');
Route::post('categories-submit', 'AdminController@categoriesSubmit');
// Route::get('{any}', 'QovexController@index');




// You can also use auth middleware to prevent unauthenticated users
Route::group(['middleware' => 'auth'], function () {
    // Route::get('/home', 'HomeController@index')->name('home');
    
});

Route::middleware(['auth', 'Admin'])->group(function () {
    Route::get('admin-list', 'AdminController@admin_list');
    Route::get('user-list', 'AdminController@user_list');
    Route::get('/home', 'HomeController@index')->name('home'); 

    Route::get('view-standard', 'AdminController@view_standard');
    Route::get('add-standard', 'AdminController@add_standard');
    Route::post('submit-standard', 'AdminController@submit_standard');
    Route::get('edit-standard/{id}', 'AdminController@edit_standard');
    Route::get('delete-standard/{id}', 'AdminController@delete_standard');


    Route::get('view-semister', 'AdminController@view_semister');
    Route::get('add-semister', 'AdminController@add_semister');
    Route::post('submit-semister', 'AdminController@submit_semister');
    Route::get('edit-semister/{id}', 'AdminController@edit_semister');
    Route::get('delete-semister/{id}', 'AdminController@delete_semister');


    Route::get('view-subject', 'AdminController@view_subject');
    Route::get('add-subject', 'AdminController@add_subject');
    Route::post('submit-subject', 'AdminController@submit_subject');
    Route::get('edit-subject/{id}', 'AdminController@edit_subject');
    Route::get('delete-subject/{id}', 'AdminController@delete_subject');

    Route::get('view-chapter', 'AdminController@view_chapter');
    Route::get('add-chapter', 'AdminController@add_chapter');
    Route::post('submit-chapter', 'AdminController@submit_chapter');
    Route::get('edit-chapter/{id}', 'AdminController@edit_chapter');
    Route::get('delete-chapter/{id}', 'AdminController@delete_chapter');

    Route::get('view-college', 'AdminController@view_college');
    Route::get('add-college', 'AdminController@add_college');
    Route::post('submit-college', 'AdminController@submit_college');
    Route::get('edit-college/{id}', 'AdminController@edit_college');
    Route::get('delete-college/{id}', 'AdminController@delete_college');


    Route::get('view-test-type', 'AdminController@view_test_type');
    Route::get('add-test-type', 'AdminController@add_test_type');
    Route::post('submit-test-type', 'AdminController@submit_test_type');
    Route::get('edit-test-type/{id}', 'AdminController@edit_test_type');
    Route::get('delete-test-type/{id}', 'AdminController@delete_test_type');


    // Question pages  Start

    Route::get('view-question', 'QuestionController@question_list');
    Route::get('add-question', 'QuestionController@add_question');
    Route::post('submit-question', 'QuestionController@submit_question');
    Route::get('edit-question/{id}', 'QuestionController@edit_question');
    Route::get('delete-question/{id}', 'QuestionController@delete_question');

    Route::get('add-answer/{id}', 'QuestionController@add_answer');
    Route::post('submit-answer', 'QuestionController@submit_answer');

    Route::get('view-test', 'QuestionController@test_list');
    Route::get('add-test', 'QuestionController@add_test');
    Route::post('submit-test', 'QuestionController@submit_test');
    Route::get('edit-test/{id}', 'QuestionController@edit_test');
    Route::get('delete-test/{id}', 'QuestionController@delete_test');

    Route::get('{any}', 'QovexController@index');
 
});


