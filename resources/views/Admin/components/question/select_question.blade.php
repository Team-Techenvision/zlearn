
<div class="col-12">
    <div class="card">
        <div class="card-body"> 
            <div class="col-12 text-left pb-2"> 
                <h4 class=""> Test Name : {{$test_level->test_name}}</a>
            </div>    
        <table  class="table table-striped table-bordered dt-responsive nowrap text-center" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                <thead>
                    <tr>
                        <th>Select </th>
                        <th>Section</th>
                        <th>Question</th>                    
                    </tr>
                </thead>
                <form class="" action="{{url('save-test-question')}}" method="POST">                        
                    @csrf 
                    <input type="hidden" name="test_id" value="{{$test_level->id}}" >
                <tbody>
                    <?php $i = 1; ?>
                    @foreach($test_chapter as $row)
                      <?php   
                            $test_question= DB::table("questions")->where("questions.chapter_id",$row->chapter_id)->first();
                            // dd($test_question);
                            
                      ?>
                       {{-- @foreach($test_question as $row) --}}
                    @if($test_question)
                    <tr>
                        
                        <td><input type="checkbox" name="question_id[]" value="{{$test_question->id}}" ></td>
                        @php $test_section_name = DB::table('test_section')->where('id',$test_question->test_section)->pluck('test_section_name')->first(); @endphp
                        <td>{{{$test_section_name}}}</td>
                        <td>{{$test_question->question}}</td>                                                                          
                    </tr>
                    {{-- @endforeach --}}
                    @else 
                    {{-- <tr>
                        <td>No Question Available...</td>                                                                          
                    </tr> --}}
                    @endif
                    @endforeach
                   
                </tbody>
                <div class="form-group text-center">
                    <div>                        
                        <button type="submit" class="btn btn-primary waves-effect waves-light">
                       Save 
                        </button>
                       
                    </div>
                </div> 
            </form>
            </table>
        </div>
    </div>
</div>

<style>
    .dt-buttons
    {
        display:none!important;
    }
 </style>   
<!-- end col -->
