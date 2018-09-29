<?php
	if(empty($_POST))
	{
		exit;
	}
	$msg=array();
	if(empty($_POST['nm'])|| empty($_POST['email'])|| empty($_POST['query']))
	{
		$msg[]="one of your field is empty";
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
		
		$nm=$_POST['nm'];
		$email=$_POST['email'];
		$query=$_POST['query'];
		
		$q="insert into contact(cont_fnm,cont_email,cont_query)
		   values ('$nm','$email','$query')";
		   
		mysqli_query($link,"insert into contact(cont_fnm,cont_email,cont_query)
		   values ('$nm','$email','$query')" )or die("wrong query");
		mysqli_close($link);
		header("location:contact.php");
	}
?>