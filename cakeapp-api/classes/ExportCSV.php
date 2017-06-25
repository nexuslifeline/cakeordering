<?php


$host = 'localhost';
 $user= 'cbhwww';
  $pass= 'ClearBH@123';
   $dbname= 'cbhdb_main';


$conn = mysqli_connect($host, $user, $pass, $dbname);
 
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
 
echo "Connected successfully<br>";
 

 




$sql = "SHOW TABLES FROM `$dbname`;";
$res = mysqli_query($conn, $sql);
 
if($res !== false){
 
    $FILE = fopen("output.csv", "w");
 
    $tables = array();
    while($row = mysqli_fetch_array($res)){
       $tables[] = $row['0'];
    }
 
    foreach($tables as $table) {
        $columns = array();
        $res = mysqli_query($conn, "SHOW COLUMNS FROM `$table`;");
 
        while($row = mysqli_fetch_array($res, MYSQL_NUM)) {
            $columns[] = $row['0'];
        }
 
        fwrite($FILE, implode(",", $columns) . "\n");
        $resTable = mysqli_query($conn, "SELECT * FROM `$table`;");
 
        while($row = mysqli_fetch_array($resTable, MYSQL_NUM)) {
            fwrite($FILE, implode(",", $row) . "\n");
        }
    }
 
    fclose($FILE);
}else{
    die(mysqli_error($conn));
}
 
mysqli_close($conn);


?>