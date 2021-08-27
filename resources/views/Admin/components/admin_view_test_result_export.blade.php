<table>
    <thead>
    <tr>
        <th>Sr no. </th>
        <th>Test Name</th>   
        <th>Student Name</th>    
    </tr>
    </thead>
    <tbody>
        <?php  $i = 1; ?>
    @foreach($test_result as $row)
        <tr>
            <td>{{ $i++ }}</td>   
            <td>{{ $row->test_name }}</td>
            <td>{{ $row->name }}</td>
            
        </tr>
    @endforeach
    </tbody>
  </table>