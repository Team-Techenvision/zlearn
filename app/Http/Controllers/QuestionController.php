<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\User;

use App\Categories;
use App\Standerd;
Use App\Subject;
Use App\chapter;
Use App\College;
Use App\Semister;
Use App\Test_Type;
Use App\Question;
Use App\Answer;
Use App\Test;




use DB;

use Illuminate\Support\Facades\Auth;



class QuestionController extends Controller
{
    public function question_list()
    {
        $data['question'] =  Question::get();
        $data['flag'] = 1; 
        $data['page_title'] = 'View Question'; 
        return view('Admin/webviews/manage_admin_question',$data);
    } 

    public function add_question()
    {
        $data['flag'] = 2; 
        $data['page_title'] = 'Add Question';        
        return view('Admin/webviews/manage_admin_question',$data);
    }

    public function submit_question(Request $req)
    {
    //    dd($req);

        $this->validate($req,[
            'question_type'=>'required',
            'choice_count'=>'required|numeric',            
         ]);


         if($req->id) { 
            Question::where('id',$req->id)->update([
                'subject_name' => $req->sub_name,
                'semister_id' => $req->semister_id,
                'standard_id' => $req->standard_id,
                'status' => $req->status,
            ]);
            toastr()->success('Question Updated Successfully!');
            return redirect('view-question');

         }else{
 
                $data = new Question;
                $data->question_title=$req->question_title; 
                $data->question_type=$req->question_type;   
                $data->question=$req->question; 
                $data->question_image=$req->question_image; 
                $data->choice_count=$req->choice_count;   
                $data->explanation=$req->explanation;           
                $data->question_level=$req->question_level;
                $data->status=$req->status;             
                $result = $data->save();
                $question_id = $data->id;
                // dd($question_id);

            if($result)
            {
                toastr()->success('Question Successfully Added!');
            }
            else
            {
                toastr()->error('Question Not Added!!');
            }         
    
       
        return redirect('view-question');

        }
    }

    public function delete_question($id){ 
        $data['result']=Question::where('id',$id)->delete();
        toastr()->error('Question Deleted !');
        return redirect('view-question');
    }

    public function edit_question($id){
        $data['flag'] = 3; 
        $data['page_title'] = 'Edit Question'; 
        $data['question'] = Question::where('id',$id)->first(); 
        // dd($data);
        return view('Admin/webviews/manage_admin_question',$data);
    }




    public function add_answer($id)
    {
        $data['flag'] = 4; 
        $data['page_title'] = 'Add Answer';  
        $data['question'] = Question::where('id',$id)->first();      
        return view('Admin/webviews/manage_admin_question',$data);
    }

    public function submit_answer(Request $req)
    {
    //    dd($req);

        $this->validate($req,[
            'question_id'=>'required',
            'answer'=>'required',           
         ]);


         if($req->id) { 
            Answer::where('id',$req->id)->update([
                'subject_name' => $req->sub_name,
                'semister_id' => $req->semister_id,
                'standard_id' => $req->standard_id,
                'status' => $req->status,
            ]);
            toastr()->success('Question Updated Successfully!');
            return redirect('view-question');

         }else{
            $j=0;
            foreach($req->answer as $row)
            {
                $data = new Answer;
                $data->question_id=$req->question_id;            
                $data->status=$req->status;
                $data->answer=$req->answer[$j];
                $result = $data->save();
                $j++;
            }

            Question::where('id',$req->question_id)->update([
                'correct_answer' => $req->correct_answer,
            ]);

            if($result)
            {
                toastr()->success('Answer Successfully added!');
            }
            else
            {
                toastr()->error('Answer Not Added!!');
            }         
    
       
        return redirect('view-question');

        }
    }


    public function test_list()
    {
        $data['test'] =  Test::get();
        $data['flag'] = 5; 
        $data['page_title'] = 'View Test'; 
        return view('Admin/webviews/manage_admin_question',$data);
    } 

    public function add_test()
    {
        $data['flag'] = 6; 
        $data['page_title'] = 'Add Test';        
        return view('Admin/webviews/manage_admin_question',$data);
    }


    public function submit_test(Request $req)
    {
    //    dd($req);

        $this->validate($req,[
            'test_name'=>'required',           
         ]);


         if($req->id) { 
            Answer::where('id',$req->id)->update([
                'subject_name' => $req->sub_name,
                'semister_id' => $req->semister_id,
                'standard_id' => $req->standard_id,
                'status' => $req->status,
            ]);
            toastr()->success('Test Updated Successfully!');
            return redirect('view-question');

         }else{
           
                $data = new Test;
                $data->test_name=$req->test_name; 
                $data->description=$req->description;            
                $data->hours=$req->hours;  
                $data->minute=$req->minute;  
                $data->exam_date=$req->exam_date;            
                $data->exam_time=$req->exam_time;            
                $data->status=$req->status;               
                $result = $data->save();
        
           
            if($result)
            {
                toastr()->success('Test Successfully added!');
            }
            else
            {
                toastr()->error('Test Not Added!!');
            }         
    
       
        return redirect('view-test');

        }
    }

    public function delete_test($id, $status){ 
        Test::where('id',$id)->update([
            'status' => $status,
        ]);
        toastr()->error('Test Status Updated!');
        return redirect('view-test');
    }

}
