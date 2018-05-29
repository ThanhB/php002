<?php
    session_start();
    include'config.php';
    if (!isset($_SESSION['username'])) {
        header('Location: index.php');
    }  
    $id=$_GET['edit'];
    $sql = "SELECT * FROM ebook where eBookID='$id'";
    $result = mysqli_query($conn, $sql);
    $row = mysqli_fetch_array($result);
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
        <h1>Sửa sách</h1>
        <table id="tbadd">
            <form action="sever.php" method="POST">
                <tr>
                <td>Title</td>
                <td><textarea name="title" id="" cols="50" rows="2" required><?php echo $row['Title'] ?></textarea></td>
                </tr>
                <tr>
                    <td>eCategory</td>
                    <td>
                        <?php 
                            include'config.php';
                            $result = mysqli_query($conn,"select *from category");
                                echo '<select name="ecategory" class="select" required>';
                                foreach ($result as $item){
                                $selected='';
                                if($row['eCategory']== $item['CategoryID']){
                                    $selected='selected';
                                }
                                echo '<option value="'.$item['CategoryID'].'"'.$selected.'>'.$item['CategoryName'].'</option>';
                                }
                                echo '</select>';
						?>
                    </td>
                </tr>
                <tr>
                    <td>CoverImg</td>
                    <td><textarea name="coverimg" id="" cols="50" rows="4" required><?php echo $row['CoverImg'] ?></textarea></td>
                </tr>
                <tr>
                    <td>Author</td>
                    <td><input type="text" name="author" id="" value="<?php echo $row['Author'] ?>" required></td>
                </tr>
                <tr>
                    <td>ContentUrl</td>
                    <td><textarea name="contenturl" id="" cols="50" rows="4" required><?php echo $row['ContentUrl'] ?></textarea></td>
                </tr>
                <tr>
                    <td>PublishDay</td>
                    <td><input type="date" name="publishday" id="" value="<?php echo $row['PublishDay'] ?>"required></td>
                </tr>
                <tr>
                    <td>Description</td>
                    <td><textarea name="description" id="" cols="50" rows="10" required><?php echo $row['Description'] ?></textarea></td>
                </tr>
                <tr>
                    <td>Rate</td>
                    <td><input type="number" name="rate" id="" value="<?php echo $row['Rate'] ?>" required></td>
                </tr>
                <tr>
                    <td>ViewsNumber</td>
                    <td><input type="number" name="viewsnumber" id="" value="<?php echo $row['ViewsNumber'] ?>"required></td>
                </tr>
                <tr>
                    <td>Status</td>
                    <td>
                        <select name="status" id="" class="select" required>
                            <option value="Hoàn thành">Hoàn thành</option>
                            <option value="Chưa Hoàn thành" <?php if (!empty($row['Status']) && $row['Status'] == 'Chưa Hoàn thành') echo 'selected'; ?>>Chưa hoàn thành</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><input type="hidden" name="id" value="<?php echo $row['eBookID']?>"></td>
                    <td><input type="submit" name="edit" value="Edit"></td>
                </tr>
            </form>
        </table>
    </div>
    
</body>
</html>