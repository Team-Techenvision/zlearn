<table>
    <thead>
    <tr>
        <th>Student Id </th>
        <th>Student First Name</th>
        <th>Student Last Name</th>
        <th>Mobile</th>
        <th>Email</th>
        <th>College</th>
    </tr>
    </thead>
    <tbody>
        <?php  $i = 1; ?>
    @foreach($student as $row)
        <tr>
            <td>{{ $i++ }}</td>   
            <td>{{ $row->name }}</td>
            <td>{{ $row->l_name }}</td>
            <td>{{ $row->phone }}</td>
            <td>{{ $row->email }}</td>
            <td> {{ $row->college_name }} </td>
        </tr>
    @endforeach
    </tbody>
  </table>