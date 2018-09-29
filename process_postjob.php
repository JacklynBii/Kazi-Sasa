<?php session_start();

	if(empty($_POST))
	{
		exit;
	}
	$msg=array();
	if(empty($_POST['title'])|| empty($_POST['cat'])||empty($_POST['hours'])||
	empty($_POST['salary'])|| empty($_POST['experience'])|| empty($_POST['disc'])|| empty($_POST['city']))
	{
		$msg[]="one of your field is empty";
	}
	if(!is_numeric($_POST['salary']))
	{
		$msg[]="only numeric valueis valid";
	}
	if(!is_numeric($_POST['hours']))
	{
		$msg[]="only numeric valueis valid";
	}
	if(!empty($msg))
	{
		echo "<b> errors:</b><br>";
		foreach($msg as $k)
		{
			echo "<li>".$k;
		}
	}
	else
	{
		$link=mysqli_connect("localhost","root","", "jobscope")or die("can not connect");
		mysqli_select_db($link, "jobscope") or die("can not select database");
		
		$title=$_POST['title'];
		$cat=$_POST['cat'];
		$hours=$_POST['hours'];
		$salary=$_POST['salary'];
		$experience=$_POST['experience'];
		$disc=$_POST['disc'];
		$city=$_POST['city'];
		
		$q="insert into jobs(j_title,j_owner_name,j_category,j_hours,j_salary,j_experience,j_discription,j_city)
		   values ('$title','".$_SESSION['unm']."','$cat','$hours','$salary','$experience','$disc','$city')";
		   
		mysqli_query($link,"insert into jobs(j_title,j_owner_name,j_category,j_hours,j_salary,j_experience,j_discription,j_city)
		   values ('$title','".$_SESSION['unm']."','$cat','$hours','$salary','$experience','$disc','$city')" )or die("wrong query");
		mysqli_close($link);
		header("location:postjob.php");
	}
	
?>