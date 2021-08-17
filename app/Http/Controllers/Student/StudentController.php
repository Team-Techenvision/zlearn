<?php

namespace App\Http\Controllers\Student;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\User;
use App\UserDetails;
use App\Education_Detail;
use App\Academics_detail;
use App\Academic_project;
use App\Certification;
use App\Interships;
use App\Technical_skill;
use App\Question;
use App\Answer;
use App\Save_Answer;
use App\Categories;
use App\Test;
use App\UserTest;
use App\College;
use App\course;
use App\Semister;
use App\branch;
use App\Test_question;
use Session;

use DB;

use Illuminate\Support\Facades\File; 

use Illuminate\Support\Facades\Auth;

class StudentController extends Controller
{
    //
    public function index(Request $request)
    {
        $data['page_title'] = 'Dashboard';
        if (Session::has('Test_Id'))
        {              
            session()->forget('Test_Id');
        }
    	return view('Students/Webviews/student_dashboard',$data);
    }

    public function resume_page_one()
    {
        $data['page_title'] = 'Basic Information';
        $u_id = Auth::User()->id;
        $data['user'] = User::where('id',$u_id)->first();
        $data['UserDetails'] = UserDetails::where('user_id',$u_id)->first(); 
        $data['Education'] = Education_Detail::where('user_id',$u_id)->first();
        $data['College']= College::where('status',1)->orderBy('college_name','asc')->get();
        $data['course']= course::where('status',1)->orderBy('course_name','asc')->get();
        $data['Semister'] = Semister::where('status',1)->orderBy('semister_name','asc')->get();
        $data['branch'] = branch::where('status',1)->orderBy('branch_name','asc')->get(); 
        $data['blood_group'] = DB::table('blood_group')->where('status',1)->orderBy('id','asc')->get();  
        //dd($data['Education']['collage_id']);  
    	return view('Students/Webviews/student_add_resume',$data);

    }

    public function submit_BasicInfo(Request $req)
    {
        // dd($req);

        $this->validate($req,[
            'first_name'=>'required|alpha',
            'last_name'=>'required|alpha',
            'first_name'=>'required|alpha',        
            'gender'=>'required|numeric',
            'bod_date'=>'required',
            'email'=> 'required|email', 
            'phone_no' => 'required|digits:10|numeric',             
            'education'=>'required|alpha', 
            'degree'=>'required|numeric',
            'semester'=>'required|numeric',
            'roll_no'=>'required',
            'mother_name'=>'required|alpha',
            'father_name'=>'required|alpha',
            'occupation'=>'required',
            'permanent_address'=>'required',
            'current_address'=>'required',
            'kyc_doc'=>'required',
            'blood_group'=>'required',
                       
         ]);

          $u_id = Auth::User()->id; 
          $result = "";       
         $update = DB::table('users')->where('id', $u_id)->update([ 'name' => $req->first_name, 'l_name'=> $req->last_name,'email' => $req->email, 'phone' => $req->phone_no,'gender'=> $req->gender,'standers'=> $req->education,]);

        $user_result = DB::table('user_details')->where('user_id', $u_id)->first();
        $cust_newfile = Null;
        $destinationPath =Null;
        $imageName = Null;
        if($req->hasFile('upload_kyc_doc'))
        {
            $file = $req->file('upload_kyc_doc');
            $destinationPath = 'images/Resume_doc'; 
            $imageName = rand(111111, 999999).'.'.$req->upload_kyc_doc->extension(); 
            $cust_newfile = $destinationPath.'/'.$imageName; 
        }   
       
        if($user_result)
        {  
           // dd("'dob' => $req->bod_date, 'address'=> $req->permanent_address,'semister' => $req->semester, 'mother_name' => $req->mother_name,'father_name'=> $req->father_name,'occupation'=> $req->occupation,'kyc_name'=>$req->kyc_doc,'blood_group'=>$req->blood_group,'upload_kyc'=>$cust_newfile");

            $result = DB::table('user_details')->where('user_id', $u_id)->update([ 'dob' => $req->bod_date, 'address'=> $req->permanent_address,'semister' => $req->semester, 'mother_name' => $req->mother_name,'father_name'=> $req->father_name,'occupation'=> $req->occupation,'kyc_name'=>$req->kyc_doc,'blood_group'=>$req->blood_group,'upload_kyc'=>$cust_newfile]);
           // dd($user_result->upload_kyc);
            if($result)
            {
               // dd("Hello");
                if($user_result->upload_kyc)
                {
                    if($req->hasFile('upload_kyc_doc'))
                    {
                        File::delete(public_path($user_result->upload_kyc));
                    }
                }    

            }
            //dd($user_result->upload_kyc);
        }
        else
        {   
           // dd("String"); 
            $data = new UserDetails;
            $data->user_id=$u_id;            
            $data->dob=$req->bod_date;
            $data->address=$req->permanent_address; 
            $data->semister=$req->semester; 
            $data->mother_name=$req->mother_name; 
            $data->father_name=$req->father_name; 
            $data->occupation=$req->occupation; 
            $data->kyc_name=$req->kyc_doc; 
            $data->blood_group=$req->blood_group;
            $data->upload_kyc=$cust_newfile;
            $result = $data->save();
        }
        if($result)
        {
            if($req->hasFile('upload_kyc_doc'))
            {
                $file->move($destinationPath,$imageName); 
            }
        }
        $result = DB::table('education__details')->where('user_id', $u_id)->first();
        if($result)
        {
            $result = DB::table('education__details')->where('user_id', $u_id)->update(['degree'=> $req->degree,'roll_no' => $req->roll_no, 'education' => $req->education,'current_address'=> $req->current_address,'collage_id'=>$req->collage,'branch_id'=>$req->branch]); 
        }
        else
        {  
            $data = new Education_Detail;
            $data->user_id=$u_id; 
            $data->degree=$req->degree; 
            $data->roll_no=$req->roll_no; 
            $data->education=$req->education; 
            $data->current_address=$req->current_address;
            $data->collage_id=$req->collage;
            $data->branch_id=$req->branch;
            $result = $data->save();
        }

        // if($result)
        //    {
                $data['page_title'] = 'Resume Form One';
                $u_id = Auth::User()->id;
                $data['user'] = User::where('id',$u_id)->first(); 
                $req->session()->flash('alert-success', 'Basic Information Submited Successfully!!');     
                // return view('Students/Webviews/student_add_resume2',$data);
                return redirect('resume-page-two');
        //    }
        //    else
        //    {
        //          $req->session()->flash('alert-danger', 'Profile Not Submited!!');
        //          return back(); 
        //    } 
 
    }

    public function resume_page_two()
    {
        $data['page_title'] = 'Academics Information';
        $u_id = Auth::User()->id;
        $data['user'] = User::where('id',$u_id)->first(); 
        $data['UserDetails'] = UserDetails::where('user_id',$u_id)->first();        
        $data['Academics'] = Academics_detail::where('user_id',$u_id)->first();
        $data['Semister'] = Semister::where('status',1)->orderBy('semister_name','asc')->get();
        //dd($data['Academics']); 
    	return view('Students/Webviews/student_add_academics',$data);

    }

    public function resume_trainingInfo()
    {
        $data['page_title'] = 'Training Details';
        $u_id = Auth::User()->id;
        $data['user'] = User::where('id',$u_id)->first();
        $data['Academic_project'] = Academic_project::where('user_id',$u_id)->get();        
        $data['Certification'] = Certification::where('user_id',$u_id)->get();
        $data['Interships'] = Interships::where('user_id',$u_id)->get();
        $data['Technical_skill'] = Technical_skill::where('user_id',$u_id)->first(); 
       // dd($data);     
    	return view('Students/Webviews/training_details',$data);
    }

    public function submit_AcademicsInfo(Request $req)
    {
       // dd($req);

        $this->validate($req,[
            'sslc_per'=>'required',
            'year_sslc'=>'required',
            'puc_per'=>'required',        
            'year_puc'=>'required'
                       
         ]);
         $u_id = Auth::User()->id;
         $user_result = Academics_detail::where('user_id',$u_id)->first();
         if($user_result)
         {
            $result = DB::table('academics_details')->where('user_id', $u_id)->update(['sslc_perce' => $req->sslc_per, 'sslc_year'=> $req->year_sslc,
            'puc_perce' => $req->puc_per, 'puc_year' => $req->year_puc,'diploma_perce'=> $req->diploma_per,
            'diploma_year' => $req->year_diploma, 'ddl_graduation' => $req->ddl_graduation,'other_graduation'=> $req->write_graduation,
            'ddl_pg' => $req->ddl_pg, 'other_pg' => $req->write_pg,'avg_cgpa'=> $req->avg_cgpa,
            'year_graduation' => $req->year_graduated, 'curr_backlog' => $req->current_backLog,'num_year_backlog'=> $req->no_yer_backs,
            'gap' => $req->acd_gaps, 'gap_explan' => $req->explain_gaps]); 
         }
         else
         {
            $data = new Academics_detail;
            $data->user_id=$u_id;            
            $data->sslc_perce=$req->sslc_per;
            $data->sslc_year=$req->year_sslc; 
            $data->puc_perce=$req->puc_per; 
            $data->puc_year=$req->year_puc; 
            $data->diploma_perce=$req->diploma_per;
            $data->diploma_year=$req->year_diploma;
            $data->ddl_graduation=$req->ddl_graduation;
            $data->other_graduation=$req->write_graduation;
            $data->ddl_pg=$req->ddl_pg;
            $data->other_pg=$req->write_pg;
            $data->avg_cgpa=$req->avg_cgpa;
            $data->year_graduation=$req->year_graduated;
            $data->curr_backlog=$req->current_backLog;
            $data->num_year_backlog=$req->no_yer_backs;
            $data->gap=$req->acd_gaps;
            $data->gap_explan=$req->explain_gaps;            
            $result = $data->save();
         }
         if($result)
         {              
              $u_id = Auth::User()->id;
              $data['user'] = User::where('id',$u_id)->first(); 
              $req->session()->flash('alert-success', 'Academics Information Submited Successfully!!');     
              // return view('Students/Webviews/student_add_resume2',$data);
              // return redirect('resume-training-Info');
              return redirect('studentdashboard'); 
         }
         else
         {
               //$req->session()->flash('alert-danger', 'Academics Information Not Submited!!');
              // return back(); 
             $req->session()->flash('alert-success', 'Academics Information Submited Successfully!!'); 
               // return redirect('resume-training-Info');
               return redirect('studentdashboard'); 
         } 



    }

    public function submit_TrainingInfo(Request $req)
    {
        //dd($req);
       
        $this->validate($req,[
            'tech_skill'=>'required',
            'career_object'=>'required'
         ]);

         $u_id = Auth::User()->id;
         $user_result = Technical_skill::where('user_id',$u_id)->first();
         if($user_result)
         {
            $result = DB::table('technical_skills')->where('user_id', $u_id)->update([ 'tech_skill' => $req->tech_skill, 'linkedin_link'=> $req->linkedin_link,'achievement' => $req->achievement, 'hobbies' => $req->hobbies,'career_object'=> $req->career_object]);
         }
         else
         {
            $data = new Technical_skill;
            $data->user_id=$u_id;            
            $data->tech_skill=$req->tech_skill;
            $data->linkedin_link=$req->linkedin_link; 
            $data->achievement=$req->achievement; 
            $data->hobbies=$req->hobbies; 
            $data->career_object=$req->career_object;
            $result = $data->save();

            // $file = $req->file('upload_certificat');
            // dd($file);             
            
                //dd("string");            
        }
        if ($req->hasfile('upload_certificat')) 
        {
            //dd("Yes");
        }
        $s = 0;
        // foreach($req->certificate as $row)
        // {    
        //     //dd("Yes");  
        //     //$req->file('upload_certificat');          
        //    // $name = rand(11111, 99999).'.'.$req->upload_certificat->extension();
        //    $filename = $req->file('upload_certificat')[$s];
        //    $name = rand(11111, 99999).'.'.$filename->extension();            
        //     $destinationPath1 = 'images/Certificate';
        //     $cust_newfile2 = $destinationPath1.'/'.$name;
        //         //dd($cust_newfile2);

        //     $data = new Certification;
        //     $data->user_id=$u_id; 
        //     $data->Certification_name=$row; 
        //     $data->upload_certificat=$cust_newfile2;
        //     $result21 = $data->save(); 
        //     if($result21)
        //     {
        //         $filename->move($destinationPath1,$name);
        //     } 
        //     $s++;               
        // }
        if ($req->hasfile('upload_certificat')) 
        {
            foreach($req->file('upload_certificat') as $row)
            {    
                //dd("Yes");  
                //$req->file('upload_certificat');          
            // $name = rand(11111, 99999).'.'.$req->upload_certificat->extension();
                $filename = $req->file('upload_certificat')[$s];
                $name = rand(11111, 99999).'.'.$row->extension();            
                $destinationPath1 = 'images/Certificate';
                $cust_newfile2 = $destinationPath1.'/'.$name;
                    //dd($cust_newfile2);

                $data = new Certification;
                $data->user_id=$u_id; 
                $data->Certification_name=$req->certificate[$s]; 
                $data->upload_certificat=$cust_newfile2;
                $result21 = $data->save(); 
                if($result21)
                {
                    $filename->move($destinationPath1,$name);
                } 
                $s++;               
            }
        }
        if($req->project_name)
        {
            $i = 0;
            foreach($req->project_name as $row)
            {
                // echo $row;
                // echo "<br/>";
                // echo $req->team_size[$i]; 

                $data = new Academic_project;
                $data->user_id=$u_id;            
                $data->project_name=$row;
                $data->team_size=$req->team_size[$i]; 
                $data->project_detail=$req->project_detail[$i];
                $result = $data->save();
                $i++;
                
            }
        } 
        if($req->int_comp_name)
        {   
            $j = 0;
        // dd($req->int_comp_name);
            foreach($req->int_comp_name as $row)
            {
                // echo $row;
                // echo "<br/>";
                // echo $req->team_size[$i]; 

                $data = new Interships;
                $data->user_id=$u_id;            
                $data->int_comp_name=$row;
                $data->intship_duration=$req->intship_duration[$j]; 
                $data->your_roles=$req->your_roles[$j];
                $result = $data->save();
                $j++;
                
            }
        }    
        // if($result)
        // {
            $req->session()->flash('alert-success', 'Training Information Submited Successfully!!');
            return redirect('studentdashboard'); 
        // }
        // else
        // {
        //     $req->session()->flash('alert-danger', 'Training Information Not Submited!!');
        //     return back(); 
        // }

    }

    // public function Start_Test()
    // {
    //     $data['page_title'] = 'Start Test';
    //     $u_id = Auth::User()->id;
    //     $data['user'] = User::where('id',$u_id)->first();
    //     $data['Question'] = Question::where('status',1)->first();
    // 	return view('Students/Webviews/teck_test',$data);

    // }
    public function View_all_Test()
    {
        $data['page_title'] = 'All Test';
        $u_id = Auth::User()->id;
        $data['user'] = User::where('id',$u_id)->first();      
        $data['count_Que'] = Question::where('status',1)->get();       
        $data['Test_time'] = DB::table('tests')
		->join('test_branch', 'test_branch.test_id', '=', 'tests.id')
         ->join('test_college','test_college.test_id','=','tests.id')
        ->join('education__details as ed_D', 'ed_D.collage_id', '=', 'test_college.college_id')
       	->join('education__details as ed', 'ed.branch_id', '=', 'test_branch.branch_id')       
        ->select('tests.*')
        ->where("ed.user_id",$u_id)
        ->get();

        //dd($data['Test_time']);         
        return view('Students/Webviews/all_test',$data);       

    }

    public function Test_Instraction(Request $req)
    {
        // dd($req->test_id);
        $u_id = Auth::User()->id;
        $data['test'] = Test::where('status',1)->where('id',$req->test_id)->first();
        // dd($data['test']);
        $data['test_id'] = $req->test_id;
        return view('Students/Webviews/Test_Instraction',$data);
    }

    // public function Start_Test(Request $req)
    public function Start_Test($test_id)
    {
        //dd($req);
        $u_id = Auth::User()->id;
        $Test_ID = $test_id;
        session()->forget('Test_Id');
        $user_test = UserTest::where('Test_status',1)->where('test_id',$Test_ID)->where('user_id',$u_id)->first();
        if(!$user_test)
        {

            $data = new UserTest;
            $data->user_id=$u_id;            
            $data->test_id=$Test_ID;            
            $result = $data->save();

           // $test_question = Question::get();
             
            $test_question = DB::table('test_question')
            ->join('questions', 'questions.id', '=', 'test_question.question_id')           
            ->select('questions.*')
            ->where('test_question.test_id',$Test_ID)
            ->get();
            //dd($test_question);
            foreach($test_question as $list)
            {
                $data = new Save_Answer;
                $data->user_id=$u_id;                             
                $data->test_id=$Test_ID;
                $data->question_id=$list->id; 
                $data->correct_answer=$list->correct_answer;             
                $result = $data->save(); 
            }


            Session::put('Test_Id',$Test_ID);
            return redirect('Test');
            //return redirect('s_test2');
            // 
            
            // $data['page_title'] = 'Start Test';
            // $u_id = Auth::User()->id;
            // $data['user'] = User::where('id',$u_id)->first();
            // $data['Question'] = Question::where('status',1)->paginate(1);
            // $data['count_Que'] = Question::where('status',1)->get();
            // $data['Test_time']=Test::where('id',$req->test_id)->first();
            // //dd($data['Test_time']);
            // return view('Students/Webviews/teck_test',$data);
        }
        else
        {
            $data['page_title'] = 'Start Test';
            $u_id = Auth::User()->id;
            $data['user'] = User::where('id',$u_id)->first();
            // $data['Question'] = Question::where('status',1)->paginate(1);
            // $data['count_Que'] = Question::where('status',1)->get();
            // $data['Test_time']=Test::where('id',$t_id)->first();
            //dd($data['Test_time']);
            return redirect('studentdashboard');
        }    
        
    }

    public function Test_Start()
    {
        if (Session::has('Test_Id'))
        {
            //

           $test_id = Session::get('Test_Id');
            $data['page_title'] = 'Start Test';
            $u_id = Auth::User()->id;
            $data['user'] = User::where('id',$u_id)->first();             
            $data['Test_time']=Test::where('id',$test_id)->first();
            // $data['Question'] = DB::table('test_question')
            // ->join('questions', 'questions.id', '=', 'test_question.question_id')           
            // ->select('questions.*')
            // ->where('test_question.test_id',$test_id)
            // ->paginate(1);
            $data['Question'] = DB::table('test_question')
            ->join('questions', 'questions.id', '=', 'test_question.question_id')
            ->join('test_section', 'test_section.id', '=', 'questions.test_section')
            ->orderBy('test_section_name', 'asc')          
            ->select('questions.*')
            ->where('test_question.test_id',$test_id)
            ->paginate(1); 
            // $data['count_Que'] = DB::table('test_question')
            // ->join('questions', 'questions.id', '=', 'test_question.question_id')           
            // ->select('questions.*')
            // ->where('test_question.test_id',$test_id)
            // ->get();
            $data['count_Que'] = DB::table('test_question')
            ->join('questions', 'questions.id', '=', 'test_question.question_id')  
            ->join('save__answers', 'save__answers.question_id', '=', 'questions.id')   
            ->join('test_section', 'test_section.id', '=', 'questions.test_section')
            ->select('questions.*','save__answers.Select_option')
            ->where('test_question.test_id',$test_id)
            ->where('save__answers.user_id',$u_id)
            ->orderBy('test_section_name', 'asc')
            ->get();
            //dd($data['Test_time']);
            return view('Students/Webviews/teck_test',$data);
        }
    }

    public function Submit_test(Request $req)
    {
        //dd($req);
        $u_id = Auth::User()->id;
        //$update = DB::table('save__answers')->where('user_id', $u_id)->where('question_id', $req->question_id)->update(['Select_option' => $req->option]);
        // $data = new Save_Answer;
        // $data->user_id=$u_id;            
        // $data->question_id=$req->question_id;
        // $data->Select_option=$req->option;
        // $result = $data->save();

        $update = DB::table('save__answers')->where('user_id', $u_id)->where('test_id',$req->test_id)->where('question_id',$req->question_id)->update([ 'Select_option' => $req->option]);
        // $data['page_title'] = 'Start Test';
        // $u_id = Auth::User()->id;
        // $data['user'] = User::where('id',$u_id)->first();
        // //dd(++$req->question_id);
        // $data['Question'] = Question::where('status',1)->where('id',++$req->question_id)->first();

        // if($data['Question'])
        // {      
    	//     return view('Students/Webviews/teck_test',$data);
        // }
        // else
        // {
        //     return redirect('studentdashboard'); 
        // }


        // ===============================
        return Response()->json($update);

    }

    // ===================================================

    public function Test_Result()
    {
       // dd($t_id);

        $data['page_title'] = 'Test Result';
        $test_id = Session::get('Test_Id');
        $u_id = Auth::User()->id;
        $data['Test_time']=Test::where('id',$test_id)->select('test_name','mark_per_question')->first();
        //dd($test_id);
        $data['user'] = User::where('id',$u_id)->first();
        $data['Q_total'] = Save_Answer::where('user_id',$u_id)->where('test_id',$test_id)->get();
        $data['Compl_total'] = Save_Answer::where('user_id',$u_id)->where('test_id',$test_id)->whereNotNull('Select_option')->get();
        $data['U_total'] = Save_Answer::where('user_id',$u_id)->where('test_id',$test_id)->whereNull('Select_option')->get(); 
        $data['C_total'] = Save_Answer::where('user_id',$u_id)->where('test_id',$test_id)->whereColumn('Select_option','correct_answer')->get();
        $data['W_total'] = Save_Answer::where('user_id',$u_id)->where('test_id',$test_id)->whereColumn('Select_option','!=','correct_answer')->get();         
        //dd($data['W_total']);
        // $data['Test_time']=Test::where('id',$t_id)->first();
        return view('Students/Webviews/Test_result',$data);   
    }



    // ====================================================================

    public function Delete_Intership($Int_id)
    {
        $u_id = Auth::User()->id;
        $result = "";
        $Interships = Interships::where('user_id',$u_id)->where('id',$Int_id)->first();
        if($Interships)
        {
            $result=Interships::where('id',$Int_id)->where('user_id',$u_id)->delete();
        }
        return back();
    }

    public function Delete_project($proj_id)
    {
        $u_id = Auth::User()->id;
        $result = "";
        $project = Academic_project::where('user_id',$u_id)->where('id',$proj_id)->first();
        if($project)
        {
            $result=Academic_project::where('id',$proj_id)->where('user_id',$u_id)->delete();
        }
        return back();
    }

    public function Delete_Certificate($certi_id)
    {
        $u_id = Auth::User()->id;
        $result = "";
        $certificate = Certification::where('user_id',$u_id)->where('id',$certi_id)->first();
        if($certificate)
        {
            $uploaded_certifi = "";
            if($certificate->upload_certificat)
            {
                $uploaded_certifi = $certificate->upload_certificat;
            }
            $result= Certification::where('id',$certi_id)->where('user_id',$u_id)->delete();
            if($result)
            {
                unlink(public_path($uploaded_certifi));
            }

        }
        return back();
    }

    public function E_Learn()
    {
         return view('Students/Webviews/E-learn');
    }



    // ====================================================

    public function Get_TestQ(Request $req)
    {
        $_Que = Question::where('id',$req)->first();
    }


    

}
