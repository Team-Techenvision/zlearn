
<div class="col-12">
    <div class="card">
        <div class="card-body"> 
            <div class="col-12 text-right pb-2"> 
                <a href="{{url('add-material')}}" class="btn btn-info">Add Material</a>
            </div>    
        <table id="datatable-buttons" class="table table-striped table-bordered dt-responsive nowrap text-center" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                <thead>
                    <tr>
                        <th>No </th>
                        <th>Name</th>
                        <th>Subject</th>
                        <th>Material</th>
                        <th>video</th> 
                        <th>Status</th>                        
                        <th>Action</th>
                    </tr>
                </thead>

                <tbody>
                    <?php $i = 1; ?>
                    @foreach($material as $row)
                    @php
                        $subject_name =  DB::table('subjects')->where('id',$row->subject_id)->pluck('subject_name')->first();
                    @endphp

                    <tr>
                        <td>{{$i++}}</td>
                        <td>{{$row->material_name}}</td>  
                        <td>{{$subject_name}}</td>  
                        <td> <a href="{{asset($row->pdf_link) }}" download="{{$row->material_name}}" title="Download">{{$row->pdf_link}}</a> </td>  
                        <td>{{$row->video_link}}</td>                      
                        <td>@if($row->status == 1) Active @else De-Active @endif</td>                       
                        <td><a href="{{url('edit-material/'.$row->id)}}" class="btn btn-info mr-2">Edit</a>  <a href="{{url('delete-material/'.$row->id)}}" class="btn btn-danger">Delete</a></td>                                               
                    </tr>
                    @endforeach                   
                </tbody>
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
