<?php
    session_start();
    include'config.php';
    if (!isset($_SESSION['username'])) {
        header('Location: index.php');
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
<body>
    <div class="container">
        <h1>Thêm sách</h1>
        <table id="tbadd">
            <form action="sever.php" method="POST">
                <tr>
                <td>Title</td>
                <td><textarea name="title" id="" cols="50" rows="2" required></textarea></td>
                </tr>
                <tr>
                    <td>eCategory</td>
                    <td>
                        <?php 
                            include'config.php';
                            $result = mysqli_query($conn,"select *from category");
                                echo '<select name="ecategory" class="select" required>';
                                foreach ($result as $item){
                                echo '<option value="'.$item['CategoryID'].'">'.$item['CategoryName'].'</option>';
                                }
                                echo '</select>';
						?>
                    </td>
                </tr>
                <tr>
                    <td>CoverImg</td>
                    <td><textarea name="coverimg" id="" cols="50" rows="4" required></textarea></td>
                </tr>
                <tr>
                    <td>Author</td>
                    <td><input type="text" name="author" id="" required></td>
                </tr>
                <tr>
                    <td>ContentUrl</td>
                    <td><textarea name="contenturl" id="" cols="50" rows="4" required></textarea></td>
                </tr>
                <tr>
                    <td>PublishDay</td>
                    <td><input type="date" name="publishday" id="" required></td>
                </tr>
                <tr>
                    <td>Description</td>
                    <td><textarea name="description" id="" cols="50" rows="10" required></textarea></td>
                </tr>
                <tr>
                    <td>Rate</td>
                    <td><input type="number" name="rate" id="" required></td>
                </tr>
                <tr>
                    <td>ViewsNumber</td>
                    <td><input type="number" name="viewsnumber" id="" required></td>
                </tr>
                <tr>
                    <td>Status</td>
                    <td>
                        <select name="status" id="" class="select" required>
                            <option value="Hoàn thành">Hoàn thành</option>
                            <option value="Chưa Hoàn thành">Chưa Hoàn thành</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" name="add" value="Add"></td>
                </tr>
            </form>
        </table>
    </div>
    
</body>
</html>