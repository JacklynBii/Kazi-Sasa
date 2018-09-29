<?php session_start();
	if(empty($_GET))
	{
		header("location:index.php");
	
	}
	$link=mysqli_connect("localhost","root","", "jobscope")or die("can not connect");
	mysqli_select_db($link, "jobscope") or die("can not select database");
	$q="insert into applicants (a_uid,a_jid)values(".$_SESSION['eeid'].",".$_GET['jid'].")";

	mysqli_query($link, "insert into applicants (a_uid,a_jid)values(".$_SESSION['eeid'].",".$_GET['jid'].")") or die("wrong query");
	header("location:index.php");
	
?>