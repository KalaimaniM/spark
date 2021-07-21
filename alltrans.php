<?php 
require_once('config.php');
$result=mysqli_query($mysqli,"SELECT * FROM transa ORDER BY transid DESC");
?>
<?php require 'htmlhead.php';?>
<div class="container mt-3">
<a href='index.php' class='btn btn-secondary'>Back</a>
<div class="table-responsive table-bordered mt-5">
    <table class="table">
      <caption>List of Transaction</caption>
      <thead>
        <tr>
          <th scope="col">S.No</th>
          <th scope="col">Transaction Id</th>
          <th scope="col">Sender Id</th>
          <th scope="col">Name</th>
          <th scope="col">Email</th>
          <th scope="col">Reciver Id</th>
          <th scope="col">Name</th>
          <th scope="col">Email</th>
          <th scope="col">Amount</th>
          <th scope="col">Date</th>
          <th scope="col">Location</th>

        </tr>
      </thead>
      <tbody>
      <?php
      $c=1;
  while($row=mysqli_fetch_array($result)){
echo'<tr>
<th scope="row">'.$c.'</th>
<td>'.$row['transid'].'</td>
<td>'.$row['s_id'].'</td>
<td>'.$row['sname'].'</td>
<td>'.$row['semail'].'</td>
<td>'.$row['rid'].'</td>
<td>'.$row['rname'].'</td>
<td>'.$row['remail'].'</td>
<td>'.$row['amount'].'</td>
<td>'.$row['date'].'</td>
<td>'.$row['location_'].'</td>
</tr>';
$c=$c+1;}?>
      </tbody>
    </table>
   </div>
<?php require 'htmlfoot.php';?>