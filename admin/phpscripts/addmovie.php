<?php
	function addMovie($title, $cover, $year, $runtime, $storyline, $trailer, $release, $genre){
		//echo "From addmovie.php";
		include('connect.php');
		

		 if($_FILES['cover']['type'] == "image/jpeg" ||
			 $_FILES['cover']['type'] == "image/jpg" ||
			 $_FILES['cover']['type'] == "image/png"
			 )
		{
		$target = "../images/{$cover['name']}";
		if(move_uploaded_file($_FILES['cover']['tmp_name'], $target)){
			$orig = "../images/{$cover['name']}";
			$th_copy = "../images/TH_{$cover['name']}";
			 if(!copy($orig, $th_copy)){
			 	echo "did not copy, try again pls";
			 }

	//	$size = getimagesize($orig);
	//echo $size[1];
			 $addString = "INSERT INTO tbl_movies VALUES (NULL,'{$cover['name']}','{$title}','{$year}','{$runtime}','{$storyline}','{$trailer}','{$release}')";


			 //echo $addString;
			 $addQuery = mysqli_query($link,$addString);
			 if($addQuery){
				$qstring = "SELECT * FROM tbl_movies ORDER BY movies_id DESC LIMIT 1";
				$lastmovie = mysqli_query($link,$qstring);
				$row = mysqli_fetch_array($lastmovie);
				$lastID = $row['movies_id'];
				//echo $lastID;
			 	//$getGenreID = "SELECT * FROM tbl_genre WHERE genre_name = '{$genre}'";
				$genreString = "INSERT INTO tbl_mov_genre VALUES(NULL,'{$lastID}',{$genre})";
				$genresult = mysqli_query($link,$genreString);
				// ADD THIS BACK IN lATER redirect_to("admin_index.php");

			 }

			 mysqli_close($link);
		}

		//$movieString = "INSERT INTO tbl_movies VALUES(NULL, '{$title}', '{$cover}', '{$year}', '{$runtime}', {$storyline}, '{$trailer}', '{$release}, {$genre}')";
//		echo $userString;
		//$movieQuery = mysqli_query($link, $movieString);
		}
	}

?>
