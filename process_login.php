<?php session_start();
if(empty($_POST))
{
	exit;
}

if(empty($_POST['unm'])||empty($_POST['pwd'])||empty($_POST['cat']))
{
	echo "You must enter all fields";
}
if($_POST['cat']=='employee')
{


	$link = mysqli_connect("localhost","root","", "jobscope") or die("Cannot Connect");
	mysqli_select_db($link,"jobscope") or die("Cant select db");
	
	$q = "select * from employees where ee_fnm = '".$_POST['unm']."'";
	
	$res = mysqli_query($link, "select * from employees where ee_fnm = '".$_POST['unm']."'") or die("wrong query");
	
	$row = mysqli_fetch_assoc($res);
	
	
	if(!empty($row))
	{
		if($_POST['pwd']==$row['ee_pwd'])
		{
			//login
			$_SESSION = array();
			
			$_SESSION['unm']=$row['ee_fnm'];
			$_SESSION['eeid']=$row['ee_id'];
			$_SESSION['cat']='employee';
			$_SESSION['status']=1;
			$_SESSION['employee']=1;
			
			header("location:index.php");
		}
		else
		{
			echo "Wrong Password";
		}
	}
	else
	{
		echo "No Such User";
	}
	
}	
	
if($_POST['cat']=='employer')
{


	$link = mysqli_connect("localhost","root","", "jobscope") or die("Cannot Connect");
	mysqli_select_db($link, "jobscope") or die("Cant select db");
	
	$q = "select * from employers where er_fnm = '".$_POST['unm']."'";
	
	$res = mysqli_query($link, "select * from employers where er_fnm = '".$_POST['unm']."'") or die("wrong query");
	
	$row = mysqli_fetch_assoc($res);
	
	
	if(!empty($row))
	{
		if($_POST['pwd']==$row['er_pwd'])
		{
			//login
			$_SESSION = array();
			
			$_SESSION['unm']=$row['er_fnm'];
			$_SESSION['eid']=$row['er_id'];
			$_SESSION['cat']='employer';
			$_SESSION['status']=1;
			$_SESSION['employer']=1;
			header("location:index.php");
		}
		else
		{
			echo "Wrong Password .";
		}
	}
	else
	{
		echo "No Such User";
	}
	
	
}
?>