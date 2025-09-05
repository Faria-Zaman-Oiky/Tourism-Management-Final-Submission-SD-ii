<?php
$conn = new mysqli("localhost", "root", "", "travel");
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $foreigner = $_POST['foreigner']; 
    $passport_number = strtoupper(trim($_POST['passport_number']));
    $expiry_date_input = $_POST['expiry_date'];
    $today = date("Y-m-d");

    echo "<h2>Result</h2>";

    if ($foreigner == "No") {
        echo "✅ You are a Bangladeshi citizen. You can travel freely inside Bangladesh.";
    } else {
        if (empty($passport_number) || empty($expiry_date_input)) {
            echo "❌ Please enter your passport number and expiry date.";
        } elseif (!preg_match("/^[A-Z]{2}[0-9]{7}$/", $passport_number)) {
            echo "❌ Invalid passport number format. Example: AB1234567";
        } else {
            $passport_safe = $conn->real_escape_string($passport_number);
            $sql = "SELECT * FROM passport WHERE passport_number='$passport_safe'";
            $result = $conn->query($sql);

            if ($result && $result->num_rows > 0) {
                $row = $result->fetch_assoc();
                if ($row['expiry_date'] < $today) {
                    echo "❌ Passport has expired. You cannot enter Bangladesh.";
                } else {
                    echo "✅ Passport is valid. You can enter Bangladesh.";
                    echo "<br>Passenger Name: " . $row['name'];
                    echo "<br>Country: " . $row['country'];
                }
            } else {
                echo "❌ Passport not found in our database. You cannot enter Bangladesh.";
            }
        }
    }
}

$conn->close();
?>