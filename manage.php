<?php session_start();

	if(! isset($_SESSION['status']))
	{
		header("location:index.php");
	}
		$link=mysqli_connect("localhost","root","", "jobscope")or die("can not connect");
		mysqli_select_db($link,"jobscope") or die("can not select database");
		
		$q="select * from jobs where j_owner_name='".$_SESSION['unm']."'";
		
		$res=mysqli_query($link,"select * from jobs where j_owner_name='".$_SESSION['unm']."'" ) or die ("wrong query");
		
		
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<!--
Design by Free CSS Templates
http://www.freecsstemplates.org
Released for free under a Creative Commons Attribution 2.5 License

Name       : Flowerily 
Description: A two-column, fixed-width design for 1024x768 screen resolutions.
Version    : 1.0
Released   : 20090906

-->

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<?php
include("includes/head.inc.php");
?>
</head>
<body>
<div id="header-wrapper">
	<div id="header">
	<div id="menu">
		<?php
		include("includes/menu.inc.php");
		?>
		</div>
		<!-- end #menu -->
		<div id="search">
		<?php
		
		include("includes/search.inc.php");
		?>
		</div>
		<!-- end #search -->
	</div>
</div>
<!-- end #header -->
<!-- end #header-wrapper -->
<div id="logo">
	<?php
	include("includes/logo.inc.php");
	?>
	</div>
<div id="wrapper">
	<div id="page">
		<div id="page-bgtop">
			<hr />
			<!-- end #logo -->
			<div id="content">
				<div class="post">
					
					<h2 class="title">Manage jobs</h2>
					<p class="meta"></p>
					<div class="entry">
					<center><b> Here are your jobs <b></center>
					<table border="0" width="100%">
				
				<tr>
						<td width="20%">No
						<td width="50%">Title
						<td width="20%">Show applicants
						<td width="10%">delete
						
					</tr>
					
				<tr>
					<td colspan="4"><hr></td></tr>
				
				<?php
				$count=1;
					while($row=mysqli_fetch_array($res))
					{
						echo '<tr> <td width="10%">'.$count.'
								<td width="50%"><a href="job_details.php?id='.$row['j_id'].'">'.$row['j_title'].'
								<td width="10%"><a href="show.php?id='.$row['j_id'].'&nm='.$row['j_title'].'">show</a>
								<td><a href="process_del_job.php?id='.$row['j_id'].'"><img src="images/delete.png"></a></tr>';
						
						$count++;
					}
					
				?>
					
					</tr>
					</table>
						
					</div>
				</div>
				
			</div>
			<!-- end #content -->
			<div id="sidebar">
			<?php
		include("includes/sidebar.inc.php");
		?>	
			</div>
			<!-- end #sidebar -->
			<div style="clear: both;">&nbsp;</div>
		</div>
	</div>
</div>
<!-- end #page -->
<div id="footer-bgcontent">
	<div id="footer">
		<?php
		include("includes/footer.inc.php");
		?>	
	</div>
</div>
<!-- end #footer -->
</body>
</html>
