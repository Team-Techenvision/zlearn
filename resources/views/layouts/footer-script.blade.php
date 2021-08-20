        <!-- JAVASCRIPT -->
        <script src="{{ URL::asset('libs/jquery/jquery.min.js')}}"></script>
        <script src="{{ URL::asset('libs/bootstrap/bootstrap.min.js')}}"></script>
        <script src="{{ URL::asset('libs/metismenu/metismenu.min.js')}}"></script>
        <script src="{{ URL::asset('libs/simplebar/simplebar.min.js')}}"></script>
        <script src="{{ URL::asset('libs/node-waves/node-waves.min.js')}}"></script>
        <script src=
"https://www.jdoodle.com/assets/jdoodle-pym.min.js"
        type="text/javascript">
    </script>

        @yield('script')

        <!-- App js -->
        <script src="{{ URL::asset('js/app.min.js')}}"></script>

        <script type="text/javascript">

        
        $.ajaxSetup({
                headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
                });
                $(document).ready(function() {
                    $('select[name="subject_id"]').on('change', function() {
                        var subjectID = $(this).val();
                        if(subjectID) {
                            $.ajax({
                                url: '/myform/ajax/'+subjectID,
                                type: "GET",
                                dataType: "json",
                                success:function(data) {
            
                                //     alert(data);
                                    $('select[name="chapter_id"]').empty();
                                    $.each(data, function(key, value) {
                                        $('select[name="chapter_id"]').append('<option value="'+ key +'">'+ value +'</option>');
                                    });
            
            
                                }
                            });
                        }else{
                            $('select[name="chapter_id"]').empty();
                        //     $('select[name="chapter_id"]').append('<option value="''">'+ Select Chapter +'</option>');
                        }
                    });
                });
            </script>

<script type="text/javascript">
    $.ajaxSetup({
            headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
            });
            $(document).ready(function() {
                $('select[name="subject_id[]"]').on('change', function() {
                    var subjectID = $(this).val();
                    // alert(subjectID);
                    if(subjectID) {
                        $.ajax({
                            method: "POST",
                            url: "/get_chapter",
                            dataType: 'json',
                            data: {
                                "_token": "{{ csrf_token() }}",
                                'subject_id': subjectID
                            },
                            success:function(data) {        
                                // alert(data);
                                $('select[name="chapter_id[]"]').empty();
                                $.each(data, function(key, value) {
                                    $('select[name="chapter_id[]"]').append('<option value="'+ key +'">'+ value +'</option>');
                                });
        
        
                            }
                        });
                    }else{
                        $('select[name="chapter_id"]').empty();
                    //     $('select[name="chapter_id"]').append('<option value="''">'+ Select Chapter +'</option>');
                    }
                });
            });
        </script>



{{-- <script type="text/javascript">
    $.ajaxSetup({
            headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
            });
            $(document).ready(function() {
                $('select[name="test_id"]').on('change', function() {
                    var testID = $(this).val();
                    var $tableSearch = $('#table-search');
                    // alert(testID);
                    $tableSearch.html('');
                    if(testID) {
                        $.ajax({
                            method: "POST",
                            url: "/get-test-question",
                            dataType: 'json',
                            data: {
                                "_token": "{{ csrf_token() }}",
                                'test_id': testID
                            },
                            success:function(data) {        
                                // alert(data);
                                data.forEach(function(row) {
                                $tableSearch.append('<tr><td>'+ row.question_name +'</td><td>'+ row.q_id +'</td></tr>');
                            });
                            }
                        });
                    }else{
                        $('select[name="chapter_id"]').empty();
                    //     $('select[name="chapter_id"]').append('<option value="''">'+ Select Chapter +'</option>');
                    }
                });
            });
        </script> --}}

        @yield('script-bottom')