<?php
$con = new mysqli('localhost', 'root', '', 'travel');
if ($con->connect_error) {
    die("Connection failed: " . $con->connect_error);
}

$sql = "SELECT pname FROM information1";
$result = $con->query($sql);
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Tour Booking</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="css/booking.css">
</head>
<body>

<div class="container">
  <h1>Explore Bangladesh</h1>

  <h2>Book Your Tour</h2>
  <form action="booking.php" method="POST" class="booking-form">

    <input type="text" name="name" placeholder="Your Full Name" required>

    <input type="email" name="email" placeholder="Your Email" required>

    <input type="tel" name="phone" placeholder="Phone Number" maxlength="11" required>

    <select name="selected_package" required>
      <option value="">-- Select Destination --</option>
      <?php
      if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
          $destination = htmlspecialchars($row['pname']);
          echo "<option value=\"$destination\">$destination</option>";
        }
      } else {
        echo "<option disabled>No destinations found</option>";
      }
      ?>
    </select>

    <input type="date" name="travel_date" required>

    <textarea name="message" placeholder="Any Special Request (optional)" rows="4"></textarea>

    <button type="submit">Confirm Booking</button>
  </form>
  <a href="history.php">
    <button>View Booking History</button></a>

</div>

</body>
</html>

<?php
$con->close();
?>
