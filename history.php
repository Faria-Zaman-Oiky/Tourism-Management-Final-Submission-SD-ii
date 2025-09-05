<?php
session_start();

if (!isset($_SESSION['email'])) {
    header("Location: index1.php"); 
    exit();
}

$conn = new mysqli("localhost", "root", "", "travel");
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$email = $_SESSION['email'];

$checkBooking = "SELECT * FROM booking WHERE email = '$email'";
$result = $conn->query($checkBooking);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>Booking History</title>
    <style>
        table {
            border-collapse: collapse;
            width: 80%;
            margin: 30px auto;
        }
        th, td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #eee;
        }
        h2 {
            text-align: center;
            margin-top: 30px;
        }
        a {
            display: block;
            text-align: center;
            margin: 20px auto;
            width: 120px;
            padding: 8px;
            background: #333;
            color: white;
            text-decoration: none;
            border-radius: 4px;
        }
    </style>
</head>
<body>

<h2>Your Booking History</h2>

<?php if ($result && $result->num_rows > 0): ?>
    <table>
        <tr>
            <th>Package</th>
            <th>Booking Date</th>
        </tr>
        <?php while ($row = $result->fetch_assoc()): ?>
            <tr>
                <td><?= htmlspecialchars($row['package'] ?? 'N/A'); ?></td>
                <td><?= htmlspecialchars($row['travel_date'] ?? 'N/A'); ?></td>
            </tr>
        <?php endwhile; ?>
    </table>
<?php else: ?>
    <p style="text-align:center;">You have no bookings yet.</p>
<?php endif; ?>

<a href="user_page.php">Back to User Page</a>

</body>
</html>
