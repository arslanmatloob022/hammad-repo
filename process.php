<?php
session_start();
require_once 'config.php';

if (isset($_POST['submit'])) {
    $reg_type = mysqli_real_escape_string($conn, $_POST['reg_type']);
    $reg_no = mysqli_real_escape_string($conn, $_POST['reg_no']);
    $name = mysqli_real_escape_string($conn, $_POST['name']);
    $arbicname = mysqli_real_escape_string($conn, $_POST['arbicname']);
    $dob = mysqli_real_escape_string($conn, $_POST['dob']);
    $nationality = mysqli_real_escape_string($conn, $_POST['nationality']);
    $sex = mysqli_real_escape_string($conn, $_POST['sex']);
    $passport = mysqli_real_escape_string($conn, $_POST['passport']);
    $civilid = mysqli_real_escape_string($conn, $_POST['civilid']);
    $sponsor = mysqli_real_escape_string($conn, $_POST['sponsor']);
    $category = mysqli_real_escape_string($conn, $_POST['category']);
    $validity = mysqli_real_escape_string($conn, $_POST['validity']);
    $toDate = mysqli_real_escape_string($conn, $_POST['toDate']);
    $isDynamicQR = mysqli_real_escape_string($conn, $_POST['isDynamicQR']);
    $medicalcentre = mysqli_real_escape_string($conn, $_POST['medicalcentre']);

    if (
        empty($reg_type) || empty($reg_no) || empty($name) || empty($dob) || empty($nationality) || empty($sex)
        || empty($passport) || empty($civilid) || empty($sponsor) || empty($category) || empty($validity) || empty($toDate) || empty($isDynamicQR) || empty($medicalcentre)
    ) {
        $_SESSION["error"] = "Please fill out all the fields";
        header('location: form');
    } else {
        $sql = mysqli_query($conn, "INSERT INTO `form` (`reg_type`, `reg_no`, `name`, `arbicname`, `dob`, `nationality`, `sex`, `passport`, `civilid`, `sponsor`, `category`, `validity`, `toDate`, `isDynamicQR`, `medicalcentre`) VALUES ('$reg_type', '$reg_no', '$name', '$arbicname', '$dob', '$nationality', '$sex', '$passport', '$civilid', '$sponsor', '$category', '$validity', '$toDate', '$isDynamicQR',  '$medicalcentre')");
        if ($sql) {
          $id = mysqli_insert_id($conn); // Get the ID of the newly inserted record
        $_SESSION["success"] = "Registration has been done.";
        header("Location: pdf?id=$id");
        exit;
        }else{
            $_SESSION["error"] = "Something went wrong";
            header('location: form');
        }
    }
}
