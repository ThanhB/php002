<?php
    session_start();
    include'config.php';
    // if (!isset($_SESSION['username'])) {
    //     header('Location: index.php');
    // }    
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
<body>
    <h1>Quản lý sách</h1>
    <div class="container">
        <div class="top">
            <div class="tp-left">
            <?php if (isset($_SESSION['msg'])): ?>
                <div class="msg">
                    <?php 
                        echo $_SESSION['msg']; 
                        unset($_SESSION['msg']);
                    ?>
                </div>	
                <?php endif ?>
            </div>
            <div class="tp-right">
                <a class="add_btn" href="add.php">Add</a>
                <a class="logout_btn" href="logout.php">Logout</a>
            </div>
        </div>
        <table id="tblist">
            <tr>
                <th>eBookID</th>
                <th>Title</th>
                <th>eCategory</th>
                <th>CoverImg</th>
                <th>Author</th>
                <th>ContentUrl</th>
                <th>PublishDay</th>
                <th>Description</th>
                <th>Rate</th>
                <th>ViewsNumber</th>
                <th>Status</th>
                <th>Edit/Delete</th>
            </tr>
            <?php
                function subtext($text,$num=80) {
                    if (strlen($text) <= $num) {
                        return $text;
                    }
                    $text= substr($text, 0, $num);
                    if ($text[$num-1] == ' ') {
                        return trim($text)."...";
                    }
                    $x  = explode(" ", $text);
                    $sz = sizeof($x);
                    if ($sz <= 1)   {
                        return $text."...";}
                    $x[$sz-1] = '';
                    return trim(implode(" ", $x))."...";
                }
                $site=10;
 				if (isset($_GET['page'])) {
 					$page=$_GET['page'];
 				}else $page=1;
 				$start=($page-1)*$site;	
                $sql = "SELECT * FROM ebook join category on ebook.eCategory=category.CategoryID limit $start,$site";
                $result = mysqli_query($conn, $sql);
                 while($row = mysqli_fetch_array($result)){ ?>
				<tr>
					<td><?php echo $row['eBookID'] ?></td>
                    <td><?php echo subtext($row['Title'],35) ?></td>
                    <td><?php echo subtext($row['CategoryName'],35) ?></td>
                    <td><?php echo subtext($row['CoverImg'],13) ?></td>
                    <td><?php echo subtext($row['Author'],35) ?></td>
                    <td><?php echo subtext($row['ContentUrl'],13) ?></td>
                    <td><?php echo $row['PublishDay'] ?></td>
                    <td><?php echo subtext($row['Description'],15) ?></td>
                    <td><?php echo $row['Rate'] ?></td>
                    <td><?php echo $row['ViewsNumber'] ?></td>
                    <td><?php echo $row['Status'] ?></td>
					<td>
                        <a class="edit_btn" href="edit.php?edit=<?php echo $row['eBookID'] ?>">Edit</a>
                        <a onclick="return confirm('Bạn có chắc muốn xóa không?');" class="del_btn" href="sever.php?del=<?php echo $row['eBookID'] ?>">Delete</a>
					</td>
				</tr>
			<?php } ?>
        </table>
        <?php 
		$site=10;
		$sql="select count(*) from ebook";
		$query=mysqli_query($conn,$sql);
		$row=mysqli_fetch_array($query);
		$tongsv=$row[0];
		$tongtrang=ceil($tongsv/$site);
	     ?>
        <form action="hs.php" method="get">
            <div class="wrapper-pg">
                <ul class="pagination">
                <?php 
                    for ($i=1; $i <=$tongtrang ; $i++) { ?>
                        <li class="page-item"><a  style="background-color: green; color:white;" class="page-link" href="?page=<?php echo $i ?>"><?php echo $i ?></a></li>
                <?php	}
                ?>
                </ul>
            </div>
        </form>

    </div>
    
</body>
</html>