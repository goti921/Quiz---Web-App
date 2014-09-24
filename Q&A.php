
<?php
$connection=mysql_connect("localhost","root","");
if(!$connection){
die("Could not connect");
}
$db_select=mysql_select_db("quiz",$connection);
$query="SELECT *
        FROM quiz1 ";
$result=mysql_query($query,$connection);
$i=1;
?>
<head>
	<link rel="stylesheet" href='css/quiz.css'/>
	</head>
<div id="wrapper">
<div id="main">
<div id="back">
<div id="header">QUIZ</div>
<div class="q">
<?php
while($ques=mysql_fetch_array($result)){
?>
<h3>
<?php 
      echo "Q.".$ques['qno'];
?>
</h3>    
<div id="question">
    <?php
      echo $ques['question'];
    ?>
</div>
<form action="check.php" method="POST" id="form" >
<div>A.<input type="radio" name=<?php echo $i; ?> value="a" /> <?php echo htmlentities($ques['ans1']); ?></div>
<div>B.<input type="radio" name=<?php echo $i; ?> value="b" /> <?php echo htmlentities($ques['ans2']); ?></div>
<div>C.<input type="radio" name=<?php echo $i; ?> value="c" /> <?php echo htmlentities($ques['ans3']); ?></div>
<div>D.<input type="radio" name=<?php echo $i; ?> value="d" /> <?php echo htmlentities($ques['ans4']); ?></div>
<br/>
<?php 
$i=$i+1;
}
?>


<?php
mysql_close($connection);
?>
</div>
<input type="submit" name="submit" id="submit" value="Submit" onclick="return confirm('Are you sure?')"  />
</form>
</div>
</div>
</div>
</body>