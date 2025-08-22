<?php
session_start();
require_once 'config.php';

if (isset($_SESSION['logged'])) {
    header('Location: index');
    exit;
}

if (isset($_POST['submit'])) {
    $username = trim($_POST['username']);
    $pass = trim($_POST['pass']);

    if (empty($username) || empty($pass)) {
        $_SESSION['error'] = 'All fields are required';
        header('Location: login');
        exit;
    } else {
        // Use prepared statements to prevent SQL injection
        $stmt = $conn->prepare("SELECT password FROM users WHERE username = ?");
        $stmt->bind_param("s", $username);
        $stmt->execute();
        $stmt->store_result();
        
        if ($stmt->num_rows == 1) {
            $stmt->bind_result($stored_password);
            $stmt->fetch();
            
            // Direct comparison for plain text passwords
            if ($pass === $stored_password) {
                $_SESSION['logged'] = true;
                header('Location: index');
                exit;
            } else {
                $_SESSION['error'] = 'Incorrect username or password';
                header('Location: login');
                exit;
            }
        } else {
            $_SESSION['error'] = 'Incorrect username or password';
            header('Location: login');
            exit;
        }
    }
} else {
    $_SESSION['error'] = 'Unauthorized access';
    header('Location: login');
    exit;
}
