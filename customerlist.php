<?php require_once('config.php');
$result=mysqli_query($mysqli,"SELECT * FROM accounts ORDER BY accon DESC");
?>
<?php require 'htmlhead.php';?>
  <?php
  while($row=mysqli_fetch_array($result)){
echo ' 
<div class="container mt-4">
<div class="card">
<div class="card-header">
  <h7>Account Id : <span>'.$row['accon'].'</span></h7>
</div>
<div class="card-body">
  <div class="row">
    <div class="col-md-9">
    <h7><span style="font-weight: 100;">Name : </span> '.$row['username'].'</h7><br>
    <h7><span style="font-weight: 100;">Email : </span> '.$row['email'].'</h7><br>
    <h7><span style="font-weight: 100;">Balance : </span> '.$row['amount'].'</h7><br>
    <h7><span style="font-weight: 100;">Acc. opened on : </span> '.$row['date'].'</h7><br>
    </div>
  <div class="col-md-3 ">
    <div class="row">
      <div class="col-12 m-1"> <a href="moneytrans.php?id='.$row['accon'].'" class="btn btn-primary" style="width: 200px;">Money Transfer</a></div>
      <div class="col-12 m-1"> <a href="usertrans.php?id='.$row['accon'].'" class="btn btn-primary" style="width: 200px;">View Transaction</a></div>
    </div>
    </div>
  </div>
</div>
</div>
</div>';
  }
  ?>
<?php require 'htmlfoot.php';?>
