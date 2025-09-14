<?php
include_once('infop.php'); 
$query = "SELECT * FROM information1 where id>11 ";
$result = mysqli_query($db, $query);

if(isset($_POST['search_p']) && $_POST['search_p'] != "") {
    $search = mysqli_real_escape_string($db, $_POST['search_p']);
    $query = "SELECT * FROM information1 WHERE pname LIKE '%$search%'";
    $result = mysqli_query($db, $query);
}
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/info.css">
    <title>Recently Added Places' Information</title>
    <style>
        .description-container {
            border: 1px solid black;
            margin: 20px auto;
            width: 80%;
            padding: 15px;
            display: flex;
            gap: 20px;
        }
        .description-container img {
            max-height: 300px;
            object-fit: cover;
        }
        .description h1 {
            margin: 0 0 10px 0;
        }
        .description p {
            margin: 5px 0;
        }
        .book-btn {
            display: inline-block;
            margin-top: 10px;
            padding: 8px 15px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <div class="main">
        <ul>
            <ul class="list">
                <li class="logo"><a href="mainPage1.html">
                    <img src="images/earth.jpeg" alt="Logo" style="width:36px;height:36px"></a></li>
                <div class="search">
                    <form method="POST" action="infoupdate.php">
                        <input type="text" name="search_p" placeholder="Search.." size="50">
                        <input type="image" name="submit_p" src="images/searchicon.png" alt="Search" style="width: 10px;px;height: 10px;px; margin-left: 35px;">
                    </form>
                </div>
            </ul>
            <ul class="list2">
                <li><a href="mainPage1.html">Home</a></li>
                <li><a id="long" href="destination.php">Destination</a></li>
                <li><a href="gallery.html">Gallery</a></li>
                <li><a href="feedback123.html">Feedback</a></li>
                <li><a href="logout.php">Logout</a></li>
            </ul>
        </ul>
    </div>

    <div class="hedder">
        <h1>Recently Added Places' Information</h1>
    </div>

    <div class="container">
        <?php
        if($result && mysqli_num_rows($result) > 0){
            while($rows = mysqli_fetch_assoc($result)) {
                $imgPath = "images/places/" . $rows['image'];
        ?>
            <div class="description-container">
                <div class="box1">
                    <img src="<?php echo $imgPath; ?>" alt="<?php echo $rows['pname']; ?>">
                     <!-- <img src="<?php echo $rows['image']; ?>" alt="<?php echo $rows['pname']; ?>" style="width:auto; height:302px;">-->

                </div>
                <div class="description">
                    <h1><?php echo $rows['pname']; ?></h1>
                    <p style="text-align: justify;"><?php echo $rows['destination']; ?></p>
                    <p style="color:red;">Package: $<?php echo $rows['package']; ?></p>
                    <a class="book-btn" href="book.php">Book Tour</a>
                </div>
            </div>
        <?php
            }
        } else {
            echo "<p style='text-align:center;color:red;'>No information found.</p>";
        }
        ?>
    </div>
</body>
</html>
