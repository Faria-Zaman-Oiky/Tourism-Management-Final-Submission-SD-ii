<?php
session_start();
require_once 'config.php';

$error = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $name = $_POST['name'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $role = $_POST['role'];

    $sql = "SELECT * FROM users WHERE email = '$email' AND role = '$role'";
    $result = $conn->query($sql);

    if ($result->num_rows == 1) {
        $user = $result->fetch_assoc();

        if ($user['name'] == $name && password_verify($password, $user['password'])) {
            
            $_SESSION['name'] = $user['name'];
            $_SESSION['email'] = $user['email'];
            $_SESSION['role'] = $user['role'];
            header("Location: ad__.php");
            exit();
        } else {
            $error = "Invalid name or password.";
        }
    } else {
        $error = "No admin user found with these details.";
    }
}
?>

<!DOCTYPE html>
<html>
<head><link rel="stylesheet" type="text/css" href="css/verify.css">

    <title>Admin Login</title>
</head>
<body>
    <h2>Admin Login</h2>

    <?php
    if ($error != '') {
        echo "<p style='color:red;'>$error</p>";
    }
    ?>

    <form method="POST" action="">
        <input type="text" name="name" placeholder="Name" required><br><br>
        <input type="email" name="email" placeholder="Email" required><br><br>
        <input type="password" name="password" placeholder="Password" required><br><br>
        <input type="text" name="role" placeholder="Role (e.g. admin)" required><br><br>
        <button type="submit">Login</button>
    </form>
</body>
</html>
