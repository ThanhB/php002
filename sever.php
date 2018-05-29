<?php
    session_start();
    include'config.php';
    
    if(isset($_POST['add'])){
		$title = $_POST['title'];
        $ecategory = $_POST['ecategory'];
        $coverimg = $_POST['coverimg'];
        $author = $_POST['author'];
        $contenturl = $_POST['contenturl'];
        $publishday = $_POST['publishday'];
        $description = $_POST['description'];
        $rate = $_POST['rate'];
        $viewsnumber = $_POST['viewsnumber'];
        $status = $_POST['status'];
		mysqli_query($conn,"INSERT INTO ebook(Title, eCategory, CoverImg, Author, ContentUrl, PublishDay, Description, Rate, ViewsNumber, Status) 
            VALUES('$title', '$ecategory','$coverimg','$author','$contenturl','$publishday','$description','$rate','$viewsnumber','$status')");
		$_SESSION['msg'] = "Thêm thành công!";
		header('location: book.php');
    }
    if(isset($_POST['edit'])){
        $id=$_POST['id'];
		$title = $_POST['title'];
        $ecategory = $_POST['ecategory'];
        $coverimg = $_POST['coverimg'];
        $author = $_POST['author'];
        $contenturl = $_POST['contenturl'];
        $publishday = $_POST['publishday'];
        $description = $_POST['description'];
        $rate = $_POST['rate'];
        $viewsnumber = $_POST['viewsnumber'];
        $status = $_POST['status'];
		mysqli_query($conn,"UPDATE ebook SET Title='$title', eCategory='$ecategory', CoverImg='$coverimg', Author='$author', ContentUrl='$contenturl', 
            PublishDay='$publishday', Description='$description', Rate='$rate', ViewsNumber='$viewsnumber',Status='$status' WHERE eBookID='$id'");
		$_SESSION['msg'] = "Sửa thành công";
		header('location: book.php');
    }
    if(isset($_GET['del'])){
		$id2= $_GET['del'];
        mysqli_query($conn,"DELETE FROM ebook WHERE eBookID='$id2'");
		$_SESSION['msg'] = "Xóa thành công!";
		header('location: book.php');
	}