<?php
$count=0;
$connect=mysql_connect("localhost","root","");
?>
<html>
<head>
<link rel="stylesheet" href='css/check.css'/>
</head>
</html>
<?php
if(!$connect){
die("Could not connect");       
}
$db_select=mysql_select_db("quiz",$connect);
$query="SELECT *
        FROM quiz1 ";
	$i=1;
$result=mysql_query($query,$connect);
?>
<div id="back">
<?php
while($row=mysql_fetch_array($result)){
if(empty($_POST[$i])){
  $_POST[$i]='e';
}
if($_POST[$i]==$row['answer']){
$count=$count+1;
}
$i=$i+1;
?>
<?php
}
if($count<=3){
	echo "<div id='red'>";
echo "You have scored ".$count."/10";
	echo "</div>";
	}
	else if($count>3 && $count<=7){
	echo "<div id='orange'>";
echo "You have scored ".$count."/10";
	echo "</div>";
	}
	else if($count>7 && $count<=10){
	echo "<div id='green'>";
echo "You have scored ".$count."/10";
	echo "</div>";
	}
mysql_close($connect);
?>
</div>