<?php

$con=mysqli_connect('localhost','root','','travel');



if(isset($_POST['de-submit-c']))
{
	$id=intval($_POST['id']);
	//$firstname=$_POST['name'];

	$sql="DELETE FROM booking WHERE id=$id";
	$result = mysqli_query($con,$sql);
	if($result)
	header('location:ad__.php');
exit();
}
if(isset($_POST['in-submit-a']))
{
	$aid=$_POST['aid'];
	$afname=$_POST['afname'];
	$aemail=$_POST['aemail'];
	$aphone=$_POST['aphone'];
	$acity=$_POST['acity'];

	$sql1="INSERT INTO travel_agent(aid,afname,aemail,aphone,acity) VALUES ($aid,'$afname','$aemail','$aphone','$acity')";
	$result = mysqli_query($con,$sql1);
	header('location:ad__.php');
}

if(isset($_POST['de-submit-a']))
{
	$aid=$_POST['aid'];
	$afname=$_POST['afname'];

	$sql2="DELETE FROM travel_agent WHERE aid=$aid and afname='$afname'";
	$result = mysqli_query($con,$sql2);
	header('location:ad__.php');
}

if(isset($_POST['ins-submit-p']))
{
	$pid=$_POST['pid'];
	$pname=$_POST['pname'];
	$pcity=$_POST['pcity'];
	$image = $_POST['image'];
	$sql3="INSERT INTO places(pid,pname,pcity,image) VALUES ($pid,'$pname','$pcity','$image')";
	$result = mysqli_query($con,$sql3);
	header('location:ad__.php');
}

if(isset($_POST['de-submit-p']))
{
	$pid=intval($_POST['pid']);
	//$pname=$_POST['pname'];

	$sql4="DELETE FROM places WHERE pid=$pid";
	$result = mysqli_query($con,$sql4);
	header('location:ad__.php');
}

if(isset($_POST['ins-submit-h']))
{
	$hid=$_POST['hid'];
	$hname=$_POST['hname'];
	$hphone=$_POST['hphone'];
	$hcity=$_POST['hcity'];

	$sql5="INSERT INTO hotels(hid,hname,hphone,hcity) VALUES ($hid,'$hname','$hphone','$hcity')";
	$result = mysqli_query($con,$sql5);
	header('location:ad__.php');
}

if(isset($_POST['de-submit-h']))
{
	$hid=$_POST['hid'];
	$hname=$_POST['hname'];

	$sql6="DELETE FROM hotels WHERE hid=$hid and hname='$hname'";
	$result = mysqli_query($con,$sql6);
	header('location:ad__.php');
}

if(isset($_POST['add_pd']))
{
    $pname = $_POST['pname'];
    $destination = $_POST['destination'];
    $image = $_POST['image'];
    $package = $_POST['package'];

    $sql = "INSERT INTO information1 (pname, destination, image, package) 
            VALUES ('$pname', '$destination', '$image', $package)";
    $result = mysqli_query($con, $sql);

    if ($result) {
        header('Location: ad__.php');
        exit();
    } else {
        echo "Error: " . mysqli_error($con);
    }
}

?>
