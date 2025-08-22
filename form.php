<?php
session_start();

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
              <a class="nav-link active" aria-current="page" href="form"><strong>Home</strong></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="list.php"><strong>List</strong></a>
            </li>
          </ul>
        </div>
         <div style="text-align: right; padding: 10px;">
        <form method="POST" style="display: inline;">
          <select name="language" onchange="this.form.submit();" style="padding: 5px; border-radius: 8px; background-color: #8d448b; border: 1px solid #ccc; color: #f1f1f1;">
            <option value="en" <?php echo ($lang === 'en') ? 'selected' : ''; ?>>English</option>
            <option value="ar" <?php echo ($lang === 'ar') ? 'selected' : ''; ?>>العربية</option>
          </select>
        </form>
        </div>
         <a href="logout" class="btn btn-danger">Logout</a>
      </div>
    </nav>
  </div>
  <div class="madical-form p-5">
    <div class="card p-5">
      <h2 class="text-center mb-2">Medical Form / نموذج طبي</h2>
      <div class="text-center">
        <?php if (isset($_SESSION['error'])) : ?>
          <p class="text-danger">
            <?php
            echo $_SESSION['error'];
            unset($_SESSION['error']);
            ?>
          </p>
        <?php endif; ?>
        <?php if (isset($_SESSION['success'])) : ?>
          <p class="text-success">
            <?php
            echo $_SESSION['success'];
            unset($_SESSION['success']);
            ?>
          </p>
        <?php endif; ?>
      </div>
      <div class="container ">
        <div class="row">
          <div class="col-md-6 border p-3 offset-md-3">
            <form action="process.php" method="post">
              <div class="col my-3 my-2">
                <input type="text" class="form-control" placeholder="Registration Type / نوع التسجيل" name="reg_type" required />
              </div>
              <div class="col my-3">
                <input type="text" class="form-control" placeholder="Registration No / رقم التسجيل" name="reg_no" required />
              </div>
              <div class="col my-3">
                <input type="text" class="form-control" placeholder="Name / الاسم" name="name" required />
              </div>
              <div class="col my-3">
                <input type="text" class="form-control" placeholder="أدخل أسمك" name="arbicname" required />
              </div>
              <div class="col my-3 d-flex justify-content-center align-items-center">
                DOB: <input type="date" class="form-control ms-1" placeholder="Date Of Birth / تاريخ الميلاد" name="dob" required />
              </div>
              <div class="col my-3">
                <input type="text" class="form-control" placeholder="Nationality / الجنسية" name="nationality" required />
              </div>
              <div class="col my-3 d-flex align-items-center justify-content-between">
                <label class="form-check-label" for="">
                  Sex / الجنس:
                </label>
                <div class="form-check">
                  <input class="form-check-input" type="radio" name="sex" value="male" id="flexRadioDefault1">
                  <label class="form-check-label" for="flexRadioDefault1">
                    Male / ذكر
                  </label>
                </div>
                <div class="form-check">
                  <input class="form-check-input" type="radio" name="sex" value="female" id="flexRadioDefault2">
                  <label class="form-check-label" for="flexRadioDefault2">
                    Female / أنثى
                  </label>
                </div>
              </div>
              <div class="col my-3">
                <input type="text" class="form-control" placeholder="Passport No / رقم الجواز" name="passport" required />
              </div>
              <div class="col my-3">
                <input type="text" class="form-control" placeholder="Civil ID / رقم الهوية" name="civilid" required />
              </div>
              <div class="col my-3">
                <input type="text" class="form-control" placeholder="Sponsor / الكفيل" name="sponsor" required />
              </div>
              <div class="col my-3">
                <input type="text" class="form-control" placeholder="Category / الفئة" name="category" required />
              </div>
              <div class="col my-3 d-flex justify-content-center align-items-center">
                <label class="form-label" for="">
                  Validity of the Medical / صلاحية الطبية:
                </label>
                <input type="date" class="form-control" name="validity" required />
              </div>
              <div class="col my-3 d-flex justify-content-center align-items-center">
                <label class="form-label" for="">
                  To / إلى:
                </label>
                <input type="date" class="form-control ms-2" placeholder="To / إلى" name="toDate" required />
              </div>
              <div class="col my-3">
                <input type="text" class="form-control mt-2" placeholder="Medical Centre / مركز طبي" name="medicalcentre" required />
              </div>
		<div class="col my-3">
                <label class="mb-4">Dynamic QR Code:</label><br>
                <input class="form-checl-input"  type="radio" name="isDynamicQR" value="1" id="yes" />
                <label for="yes">Yes</label>
                <input class="form-check-input" type="radio"  name="isDynamicQR" value="no" id="no" />
                <label for="no">No</label>
              </div>
              <div class="btn d-flex align-items-center justify-content-center mt-5">
                <input type="submit" class="btn btn-dark px-5" name="submit" value="Register / تسجيل">
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>

  <script src="assets/js/script.js"></script>
</body>

</html>
