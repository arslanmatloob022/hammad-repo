<?php
session_start();
require_once 'config.php';

if (!isset($_SESSION['logged'])) {
    header('Location: login');
    exit;
}
?>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
  <link rel="stylesheet" href="assets/css/style.css" />
  <title>Medical Form</title>
</head>

<body>
  <div class="container-fluid">
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
      <div class="container-fluid">
        <a class="navbar-brand" href="form">Medical</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse d-flex justify-content-center navbar-collapse" id="navbarNav">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link " aria-current="page" href="form"><strong>Home</strong></a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" href="list"><strong>List</strong></a>
            </li>
         
          
          </ul>
        </div>
        <a href="logout" class="btn btn-danger">Logout</a>
      </div>
    </nav>
  </div>
  <div class="madical-form p-5">
    <div class="card p-5">
      <h2 class="text-center mb-5">Medical Form</h2>
      <div class="text-center">
      <?php if (isset($_SESSION['error'])) : ?>
						<div class="alert alert-danger" role="alert">
							<?php
							echo $_SESSION['error'];
							unset($_SESSION['error']);
							?>
						</div>
					<?php endif; ?>
					<?php if (isset($_SESSION['success'])) : ?>
						<div class="alert alert-success" role="alert">
							<?php
							echo $_SESSION['success'];
							unset($_SESSION['success']);
							?>
						</div>
					<?php endif; ?>
      </div>
      <div class="container">
        <table class="table">
          <thead>
            <tr>
            <th>Registration No</th>
            <th>Registration Type</th>
            <th>Name</th>
            <th>Passport No</th>
            <th>Action</th>
          </tr>
          </thead>
          <tbody>
            <?php
            $sql= mysqli_query($conn,"SELECT * FROM `form` ORDER BY id DESC");
            if(mysqli_num_rows($sql)>0){
              while($row= mysqli_fetch_assoc( $sql)){
            

            ?>
            <tr>
              <td><?php echo $row['reg_no']?></td>
              <td><?php echo $row['reg_type']?></td>
              <td><?php echo $row['name']?></td>
              <td><?php echo $row['passport']?></td>
              <?php $encodedId = base64_encode($row['id']); ?>
               
              <td><a href="pdf?id=<?php echo urlencode($encodedId); ?>" class="btn btn-sm btn-success">View</a>
              <a href="edit?id=<?php echo $row['id']?>" class="btn btn-sm btn-warning">Edit</a>
              <a href="delete.php?id=<?php echo $row['id']; ?>" class="btn btn-sm btn-danger" onclick="return confirm('Are you sure you want to delete this record?');">Delete</a>

              </td>
            </tr>
            <?php
              }}
            ?>
          </tbody>
        </table>
      </div>
    </div>
  </div>

  <script src="assets/js/script.js"></script>
</body>

</html>