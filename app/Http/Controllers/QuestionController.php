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
Use App\Question_level;
Use App\Test_chapter;
Use App\Test_college;
Use App\Test_course;
Use App\Test_subject;
Use App\Test_question;
Use App\Test_branch;
Use App\Test_tb_section;
Use App\Test_Section;





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
        $data['subjects'] = DB::table('subjects')->where('status',"1")->orderBy('subject_name', 'asc')->get();
        $data['chapters'] = DB::table('chapters')->where('status',"1")->get();  
        $data['question_level'] = DB::table('question_level')->where('status',"1")->get();  
        $data['test_section'] = DB::table('test_section')->where('status',"1")->get();   
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

            $file = $req->file('question_image');
            // dd($file);
            if($req->hasFile('question_image')) {
                $file = $req->file('question_image');
                $filename = 'question'.time().'.'.$req->question_image->extension();
                $destinationPath = public_path('/images/question');
                $file->move($destinationPath, $filename);

            
                $data = new Question;
                $data->subject_id=$req->subject_id;
                $data->chapter_id=$req->chapter_id;
                $data->question_title=$req->question_title; 
                $data->question_type=$req->question_type;   
                $data->question=$req->question; 
                $data->question_image=$req->question_image; 
                $data->choice_count=$req->choice_count;   
                $data->explanation=$req->explanation;           
                $data->question_level=$req->question_level;
                $data->test_section=$req->test_section;
                $data->question_image = 'images/question/'.$filename;
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
            
            }else{
                          
                $data = new Question;
                $data->subject_id=$req->subject_id;
                $data->chapter_id=$req->chapter_id;
                $data->question_title=$req->question_title; 
                $data->question_type=$req->question_type;   
                $data->question=$req->question; 
                $data->question_image=$req->question_image; 
                $data->choice_count=$req->choice_count;   
                $data->explanation=$req->explanation;           
                $data->question_level=$req->question_level;
                $data->test_section=$req->test_section;
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
            
            }
       
        return redirect('add-answer/'.$question_id);
        
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
        $data['question'] = Question::leftJoin('chapters', 'chapters.id', '=', 'questions.chapter_id')
                                    ->leftJoin('subjects', 'subjects.id', '=', 'questions.subject_id')
                                    ->select('questions.*', 'chapters.id as Chapter_id', 'chapters.chapter_name','subjects.id as subject_id', 'subjects.subject_name')
                                    ->where('questions.id',$id)
                                    ->first(); 
        $data['subjects'] = DB::table('subjects')->where('status',"1")->get();
        $data['chapter'] = DB::table('chapters')->where('status',"1")->get(); 
        $data['question_level'] = DB::table('question_level')->where('status',"1")->get();  

        // dd($data);
        return view('Admin/webviews/manage_admin_question',$data);
    }

    public function myformAjax($id)
    {
        $chapter = DB::table("chapters")
                    ->where("subject_id",$id)
                    ->orderBy('chapter_name', 'desc')
                    ->pluck("chapter_name","id");
                    // dd($chapter);
        return json_encode($chapter);
    }


    public function get_chapter(Request $req)
    {
        $subject_id = $req->subject_id;
        // return($subject_id);
        $chapter = DB::table("chapters")
                    ->whereIn("subject_id",$subject_id)
                    ->pluck("chapter_name","id");
                    // dd($chapter);
        return json_encode($chapter);
    }




    public function add_answer($id)
    {
        $data['flag'] = 4; 
        $data['page_title'] = 'Add Answer';  
        $data['question'] = Question::where('id',$id)->first(); 
        $data['answer'] = Answer::where('question_id',$id)->first(); 
        // dd($data['answer']);
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
        $data['semister'] = Semister::where('status',"1")->get(); 
        $data['college'] = College::where('status',"1")->get();
        $data['courses'] = DB::table('courses')->where('status',"1")->get();
        $data['branches'] = DB::table('branches')->where('status',"1")->get();  
        $data['semisters'] = DB::table('semisters')->where('status',"1")->get();
        $data['question_level'] = DB::table('question_level')->where('status',"1")->get();
        $data['question_pattern'] = DB::table('question_pattern')->where('status',"1")->get();
        $data['test_section'] = DB::table('test_section')->where('status',"1")->get();  
        $data['subjects'] = DB::table('subjects')->where('status',"1")->orderBy('subject_name', 'asc')->get();   
        $data['test_name'] = DB::table('test_name')->where('status',"1")->get();
        $data['program_names'] = DB::table('program_name')->where('status',"1")->get();
        $data['test_types'] = DB::table('test_types')->where('status',"1")->get();                
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
                'test_name' => $req->test_name,
                'semister_id' => $req->semister_id,
                'standard_id' => $req->standard_id,
                'status' => $req->status,
            ]);
            toastr()->success('Test Updated Successfully!');
            return redirect('view-question');

         }else{
           
                $data = new Test;
                $data->test_name=$req->test_name; 
                $data->test_type_id=$req->test_type_id;
                $data->test_name_id=$req->test_name_id;
                $data->test_instruction=$req->test_instruction;
                // $data->branch_id=$req->branch_id;
                $data->semester_id=$req->semester_id;
                $data->program_name_id=$req->program_name_id;
                $data->description=$req->description;
                $data->program_name_id=$req->program_name_id;                
                $data->question_pattern=$req->question_pattern;
                $data->total_question=$req->total_question;
                $data->total_marks=$req->total_marks;
                $data->mark_per_question=$req->mark_per_question;
                $data->hours=$req->hours;  
                $data->minute=$req->minute;  
                $data->exam_date=$req->exam_date;            
                $data->exam_time=$req->exam_time;            
                $data->status=$req->status;               
                $result = $data->save();        
                $test_id = $data->id;

                $a=0;
                foreach($req->college_id as $row)
                {
                    $data = new Test_college;
                    $data->test_id=$test_id;            
                    $data->college_id=$req->college_id[$a];
                    $result = $data->save();
                    $a++;
                }

                $b=0;
                foreach($req->course_id as $row)
                {
                    $data = new Test_course;
                    $data->test_id=$test_id;           
                    $data->course_id=$req->course_id[$b];
                    $result = $data->save();
                    $b++;
                }

                $c=0;
                foreach($req->subject_id as $row)
                {
                    $data = new Test_subject;
                    $data->test_id=$test_id;           
                    $data->subject_id=$req->subject_id[$c];
                    $result = $data->save();
                    $c++;
                }

                $d=0;
                foreach($req->branch_id as $row)
                {
                    $data = new Test_branch;
                    $data->test_id=$test_id;           
                    $data->branch_id=$req->branch_id[$d];
                    $result = $data->save();
                    $d++;
                }

                $e=0;
                foreach($req->test_section_id as $row)
                {
                    $data = new Test_tb_section;
                    $data->test_id=$test_id;           
                    $data->test_section_id=$req->test_section_id[$e];
                    $result = $data->save();
                    $e++;
                }

            if($result)
            {
                toastr()->success('Test Successfully added!');
            }
            else
            {
                toastr()->error('Test Not Added!!');
            }         
    
    
        return redirect('add-test-two/'.$test_id);
        }
    }




    


    public function add_test_two($test_id)
    {
        $data['flag'] = 10; 
        $data['page_title'] = 'Add Test Chapter';    
        $data['test'] = Test::where('id',$test_id)->first(); 
        $data['chapters'] =  Chapter::join('subjects', 'subjects.id', '=', 'chapters.subject_id')
                                    ->join('test_subject', 'test_subject.subject_id', '=', 'chapters.subject_id')
                                    ->select('subjects.*','test_subject.*','chapters.id as chapter_id', 'chapters.chapter_name','chapters.subject_id')
                                    ->where('test_subject.test_id', $test_id)
                                    ->get();
        $data['test_section'] = Test_Section::join('test_tb_section','test_tb_section.test_section_id','=','test_section.id')
                                            ->where('test_tb_section.test_id', $test_id)
                                            ->select('test_section.*','test_tb_section.id as test_tb_section_id','test_tb_section.test_id','test_tb_section.test_section_id')
                                            ->get();
        // dd($data['test_section']);              
        return view('Admin/webviews/manage_admin_question',$data);
    }


    public function submit_test_two(Request $req)
    {
    //    dd($req);

        $this->validate($req,[
            'test_id'=>'required',           
         ]);

         $i=0;
         foreach($req->chapter_id as $row)
         {
             $data = new Test_chapter;
             $data->test_id=$req->test_id;           
             $data->chapter_id=$req->chapter_id[$i];
             $result = $data->save();
             $i++;
         }

         $j=0;
         foreach($req->test_tb_section_id as $row)
         {
         Test_tb_section::where('id',$req->test_tb_section_id[$j])->update([
                'section_time' => $req->section_time[$j]
            ]);
            $j++;
        }
            toastr()->success('Test Added Successfully!');
            return redirect('view-test');
    }

    public function delete_test($id, $status){ 
        Test::where('id',$id)->update([
            'status' => $status,
        ]);
        toastr()->error('Test Status Updated!');
        return redirect('view-test');
    }

    public function edit_test($id){
        $data['flag'] = 7; 
        $data['page_title'] = 'Edit Test'; 
        $data['test'] = Test::where('id',$id)->first(); 
        // dd($data);
        return view('Admin/webviews/manage_admin_question',$data);
    }




    public function add_test_question()
    {
        $data['flag'] = 8; 
        $data['page_title'] = 'Add Question'; 
        $data['tests'] = Test::where('status',1)->get();               
        return view('Admin/webviews/manage_admin_question',$data);
    }

    public function view_test_question()
    {
        $data['flag'] = 11; 
        $data['page_title'] = 'View Question'; 
        $data['tests'] = Test::where('status',1)->get();               
        return view('Admin/webviews/manage_admin_question',$data);
    }

    
    
    public function view_test_question1(Request $req)
    {
        $test_id = $req->test_id;
        // return($subject_id);
        $data['test_question'] = DB::table("questions")
                    ->join('test_question', 'test_question.question_id', '=', 'questions.id')
                    ->join('tests', 'tests.id', '=', 'test_question.test_id')
                    ->where("test_question.test_id",$test_id)                    
                    ->get();
                    // dd($data['test_question']);
        $data['flag'] = 12; 
        $data['page_title'] = 'View Test Question '; 
        $data['tests'] = Test::where('id', $test_id)->first();              
        return view('Admin/webviews/manage_admin_question',$data);
    }


    public function get_test_question(Request $req)
    {
        $test_id = $req->test_id;
        $data['test_level']= DB::table("tests")
                    ->where("tests.id",$test_id)                    
                    ->first();
                    // dd($data['test_level']);
        $data['test_chapter']= DB::table('test_chapter')
                                ->join('chapters', 'chapters.id', '=', 'test_chapter.chapter_id')
                                ->where("test_chapter.test_id",$test_id)
                                ->get();
                                // dd($data['test_chapter']);
        $data['flag'] = 9; 
        $data['page_title'] = 'Select Question'; 
        return view('Admin/webviews/manage_admin_question',$data);
    }


    public function save_test_question(Request $req)
    {
    //    dd($req);
        $this->validate($req,[
            'question_id'=>'required',                     
         ]);


                 $i=0;
                foreach($req->question_id as $row)
                {
                    $data = new Test_question;
                    $data->question_id=$req->question_id[$i];
                    $data->test_id=$req->test_id;                         
                    $result = $data->save();
                    $i++;
                }
                if($result)
                {
                    toastr()->success('Test Question Successfully Added!');
                }
                else
                {
                    toastr()->error('Test Question Not Added!!!');
                } 
                return redirect('view-test');
            
    }


    

}
