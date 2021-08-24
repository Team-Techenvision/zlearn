<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use DB;
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
Use App\Test_Section;
Use App\Material;


class MaterialController extends Controller
{
    public function view_material()
    {
        $data['material'] =  Material::get();
        $data['flag'] = 1; 
        $data['page_title'] = 'View Material'; 
        return view('Admin/webviews/manage_admin_material',$data);
    } 

    public function add_material()
    {
        $data['flag'] = 2; 
        $data['page_title'] = 'Add Material';   
        $data['subjects'] = DB::table('subjects')->where('status',"1")->orderBy('subject_name', 'asc')->get();
        $data['chapters'] = DB::table('chapters')->where('status',"1")->get();    
        return view('Admin/webviews/manage_admin_material',$data);
    }

    public function submit_material(Request $req)
    {
    //    dd($req);
        $this->validate($req,[
            'subject_id'=>'required',          
         ]);


         if($req->question_id) { 
             if($req->chapter_id != null){
                Question::where('id',$req->question_id)->update([
                    'subject_id' => $req->subject_id,
                    'chapter_id' => $req->chapter_id,
                    'question_type' => $req->question_type,
                    'question' => $req->question,
                    // 'question_image' => $req->question_image,
                    // 'choice_count' => $req->choice_count,
                    'explanation' => $req->explanation,
                    'question_level' => $req->question_level,
                    'test_section' => $req->test_section,
                    'status' => $req->status,
                ]);
             }else{
                Question::where('id',$req->question_id)->update([
                    'subject_id' => $req->subject_id,
                    // 'chapter_id' => $req->chapter_id,
                    'question_type' => $req->question_type,
                    'question' => $req->question,
                    // 'question_image' => $req->question_image,
                    // 'choice_count' => $req->choice_count,
                    'explanation' => $req->explanation,
                    'question_level' => $req->question_level,
                    'test_section' => $req->test_section,
                    'status' => $req->status,
                ]);
             }

             if($req->hasFile('question_image_new')) {
                $file = $req->file('question_image_new');
                $filename = 'question'.time().'.'.$req->question_image_new->extension();
                $destinationPath = public_path('/images/question');
                $file->move($destinationPath, $filename);

                Question::where('id',$req->question_id)->update([
                    'question_image' => 'images/question/'.$filename,
                ]);
             }
          
            toastr()->success('Question Updated Successfully!');
            
            return redirect('edit-answer/'.$req->question_id);

         }else{
                // save code start 

            $file = $req->file('pdf_link');
            // dd($file);
            if($req->hasFile('pdf_link')) {
                $file = $req->file('pdf_link');
                $filename = 'pdf'.time().'.'.$req->pdf_link->extension();
                $destinationPath = public_path('/images/material');
                $file->move($destinationPath, $filename);

            
                $data = new Material;
                $data->material_name=$req->material_name;             
                $data->subject_id=$req->subject_id;
                $data->chapter_id=$req->chapter_id;
                $data->attachment_type=$req->attachment_type;
                $data->attachment_type=$req->attachment_type;
                $data->pdf_link = 'images/material/'.$filename;
                $data->video_link=$req->video_link;
                $data->description=$req->description;
                $data->status=$req->status;             
                $result = $data->save();
                // dd($question_id);
            
            if($result)
            {
                toastr()->success('Material Successfully Added!');
            }
            else
            {
                toastr()->error('Material Not Added!!');
            }         
            
            }else{
                $data = new Material;
                $data->material_name=$req->material_name;             
                $data->subject_id=$req->subject_id;
                $data->chapter_id=$req->chapter_id;
                $data->attachment_type=$req->attachment_type;
                $data->attachment_type=$req->attachment_type;
                $data->video_link=$req->video_link;
                $data->description=$req->description;
                $data->status=$req->status;             
                $result = $data->save();            
            if($result)
            {
                toastr()->success('Material Successfully Added!');
            }
            else
            {
                toastr()->error('Material Not Added!!');
            }  
            
            }
       
        return redirect('view-material');
        
        }
    }

    public function delete_materail($id){ 
        $data['result']=Materail::where('id',$id)->delete();
        toastr()->error('Question Deleted !');
        return redirect('view-question');
    }
    
}
