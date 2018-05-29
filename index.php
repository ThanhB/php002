<?php
    include'config.php';
    session_start();
    if (isset($_POST["btn_submit"])) {
		$username = $_POST["username"];
        $password = $_POST["password"];
		$username = strip_tags($username);
		$username = addslashes($username);
		$password = strip_tags($password);
		$password = addslashes($password);
			$sql = "select * from user where username = '$username' and password = '$password' ";
			$query = mysqli_query($conn,$sql);
			$num_rows = mysqli_num_rows($query);
			if ($num_rows==0) {
				$_SESSION['msg'] = "Tên đăng nhập hoặc mật khẩu không đúng!";
			}else{
				$_SESSION['username'] = $username;
                header('Location: book.php');
            }
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
</head>
<body id="bdlg">
    <div class="login">
        <p id="lg">LOGIN</p>
        <div class="form">
            <form action="index.php" method="POST">
                <input type="text" name="username" id="us" placeholder="Username" required>
                <input type="password" name="password" id="pw" placeholder="Password" required>
                <input type="submit" value="Login" id="sm" name="btn_submit">
                <?php if (isset($_SESSION['msg'])): ?>
                
            </form>    
        </div>
        <div class="msg">
            <?php 
                echo $_SESSION['msg']; 
                unset($_SESSION['msg']);
            ?>
            </div>	
            <?php endif ?>
        </div>
    </div>
</body>
</html>