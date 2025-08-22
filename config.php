<?php

// Enable error reporting
mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);

try {
    $conn = mysqli_connect("localhost", "medical", "medical", "medical");

    if (!$conn) {
        throw new Exception("Connection failed: " . mysqli_connect_error());
    }
   
} catch (mysqli_sql_exception $e) {
    echo "Error: " . $e->getMessage();
}

?>
