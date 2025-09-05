<?php
session_start();
if (!isset($_SESSION['email'])) {
    header("Location: index1.php");
    exit();
}
$conn = new mysqli("localhost", "root", "","travel");
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
$email = $_SESSION['email'];
$name = isset($_SESSION['name']) ? $_SESSION['name'] : 'User';

$checkBooking = "SELECT * FROM booking WHERE email = '$email'";
$result = $conn->query($checkBooking);

$hasBooking = false;
if ($result && $result->num_rows > 0) {
    $hasBooking = true;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Page</title>
    <link rel="stylesheet" href="css/.css"> 
</head>
<body>
    <div class="main">
        <ul class="list">
            <li class="logo">
                <a href="mainPage1.html">
                    <img src="images/earth.jpeg" alt="Logo" style="width:36px;height:36px">
                </a>
            </li>
            <li>
                <form method="POST" action="info.php" class="search">
                    <input type="text" name="search_p" placeholder="Search.." size="50">
                    <input type="image" name="submit_p" src="images/searchicon.png" alt="Search" style="width:22px;height:22px;margin-left: 35px;">
                </form>
            </li>
        </ul>

        <ul class="list2">
            <li><a href="mainPage1.html">Home</a></li>
            <li class="active-menu"><a id="long" href="user_page.php">User</a></li>
            <li><a href="destination.php">Destination</a></li>
            <li><a href="gallery.html">Gallery</a></li>
            <li><a href="feedback123.html">Feedback</a></li>
            <li><a href="index1.php">Logout</a></li>
            <li><a href="book.php">Booking</a></li>
        </ul>
    </div>

    <div class="container">
        <div class="box">
            <h1>Welcome, <span><?= htmlspecialchars($name); ?></span></h1>
            <p>This is a <span>user</span> page.</p>
            <p style="margin-top: 20px; font-weight: bold;">
                <?php if ($hasBooking): ?>
                    ✅ You have already booked our package!<br><br>
                <a href="history.php">
                    <button>View Booking History</button>
                </a>

                <?php else: ?>
                    ❌ You have not booked our package yet.
                <?php endif; ?>
            </p>
        </div>
    </div>
</body>
</html>
