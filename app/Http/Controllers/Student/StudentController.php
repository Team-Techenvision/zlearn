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

use DB;

use Illuminate\Support\Facades\File; 

use Illuminate\Support\Facades\Auth;

class StudentController extends Controller
{
    //
    public function index(Request $request)
    {
        $data['page_title'] = 'Dashboard'; 
    	return view('Students/Webviews/student_dashboard',$data);
    }

    public function resume_page_one()
    {
        $data['page_title'] = 'Basic Information';
        $u_id = Auth::User()->id;
        $data['user'] = User::where('id',$u_id)->first();
        $data['UserDetails'] = UserDetails::where('user_id',$u_id)->first(); 
        $data['Education'] = Education_Detail::where('user_id',$u_id)->first();     
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
            'campus'=>'required',
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
            'upload_kyc_doc'=>'nullable'          
         ]);

          $u_id = Auth::User()->id; 
          $result = "";       
         $update = DB::table('users')->where('id', $u_id)->update([ 'name' => $req->first_name, 'l_name'=> $req->last_name,'email' => $req->email, 'phone' => $req->phone_no,'gender'=> $req->gender,'standers'=> $req->education,]);

        $user_result = DB::table('user_details')->where('user_id', $u_id)->first();
        $cust_newfile = Null;
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
        $user_result = DB::table('education__details')->where('user_id', $u_id)->first();
        if($user_result)
        {
            $result = DB::table('education__details')->where('user_id', $u_id)->update(['compus' => $req->campus, 'degree'=> $req->degree,'roll_no' => $req->roll_no, 'education' => $req->education,'current_address'=> $req->current_address]); 
        }
        else
        {  
            $data = new Education_Detail;
            $data->user_id=$u_id;            
            $data->compus=$req->campus;
            $data->degree=$req->degree; 
            $data->roll_no=$req->roll_no; 
            $data->education=$req->education; 
            $data->current_address=$req->current_address;
            $result = $data->save();
        }

        if($result)
           {
                $data['page_title'] = 'Resume Form One';
                $u_id = Auth::User()->id;
                $data['user'] = User::where('id',$u_id)->first(); 
                $req->session()->flash('alert-success', 'Basic Information Submited Successfully!!');     
                // return view('Students/Webviews/student_add_resume2',$data);
                return redirect('resume-page-two');
           }
           else
           {
                 $req->session()->flash('alert-danger', 'Profile Not Submited!!');
                 return back(); 
           } 
 
    }

    public function resume_page_two()
    {
        $data['page_title'] = 'Academics Information';
        $u_id = Auth::User()->id;
        $data['user'] = User::where('id',$u_id)->first(); 
        $data['Academics'] = Academics_detail::where('user_id',$u_id)->first();
    	return view('Students/Webviews/student_add_academics',$data);

    }

    public function resume_trainingInfo()
    {
        $data['page_title'] = 'Training Details';
        $u_id = Auth::User()->id;
        $data['user'] = User::where('id',$u_id)->first();      
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
              return redirect('resume-training-Info');
         }
         else
         {
               $req->session()->flash('alert-danger', 'Academics Information Not Submited!!');
               return back(); 
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
            $update = DB::table('technical_skills')->where('user_id', $u_id)->update([ 'tech_skill' => $req->tech_skill, 'linkedin_link'=> $req->linkedin_link,'achievement' => $req->achievement, 'hobbies' => $req->hobbies,'career_object'=> $req->career_object]);
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
        foreach($req->file('upload_certificat') as $row)
        {    
            //dd("Yes");  
            //$req->file('upload_certificat');          
           // $name = rand(11111, 99999).'.'.$req->upload_certificat->extension();
           //$filename = $req->file('upload_certificat')[$s];
           $name = rand(11111, 99999).'.'.$row->upload_certificat->extension();            
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
        $j = 0;
        dd($req->int_comp_name);
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

        if($result)
        {
            $req->session()->flash('alert-success', 'Training Information Submited Successfully!!');
            return redirect('/'); 
        }
        else
        {
            $req->session()->flash('alert-danger', 'Training Information Not Submited!!');
            return back(); 
        }

    }

    public function Start_Test()
    {
        $data['page_title'] = 'Start Test';
        $u_id = Auth::User()->id;
        $data['user'] = User::where('id',$u_id)->first();
        $data['Question'] = Question::where('status',1)->first();
    	return view('Students/Webviews/teck_test',$data);

    }

    public function Submit_test (Request $req)
    {
        //dd($req);
        $u_id = Auth::User()->id;
        //$update = DB::table('save__answers')->where('user_id', $u_id)->where('question_id', $req->question_id)->update(['Select_option' => $req->option]);
        $data = new Save_Answer;
        $data->user_id=$u_id;            
        $data->question_id=$req->question_id;
        $data->Select_option=$req->option;
        $result = $data->save();

        $data['page_title'] = 'Start Test';
        $u_id = Auth::User()->id;
        $data['user'] = User::where('id',$u_id)->first();
        //dd(++$req->question_id);
        $data['Question'] = Question::where('status',1)->where('id',++$req->question_id)->first();

        if($data['Question'])
        {      
    	    return view('Students/Webviews/teck_test',$data);
        }
        else
        {
            return redirect('/'); 
        }

    }

}
