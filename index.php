<?php 
$servername = "localhost";
$database = "puertos";
$username = "root";
$password = "";
// Create connection
$conn = mysqli_connect($servername, $username, $password, $database);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
echo "Connected successfully";
 ?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Información de la IP</title>
	<link rel="stylesheet" href="style.css">
</head>
<body>
	<?php 
	$sql="SELECT * FROM datos";
	$result=mysqli_query($conn, $sql);
	 ?>
	<div id="tabla">
		<table>
			<th>IP</th>
			<th>PUERTO</th>
			<th>STATUS</th>
			<th>SERVICIO</th>
			<?php 
			while ($row = $result -> fetch_assoc()) {
				echo "<tr><td>".$row["IP"]."</td><td>".$row["port"]."</td><td>".$row["state"]."</td><td>".$row["service"]."</td></tr>";
			}
			 ?>
		</table>
	</div>
</body>
</html>