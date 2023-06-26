<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../../style/style.css">
</head>
<body>
    <div class="menu">
        <div class='menu-list'>
            <a class="sel" href="index.php">Работники</a>
            <a href="orders.php">Заявки</a>
            <a href="about.php">Обо мне</a>
        </div>
    </div>
    <div class="container">
        <header>
            <h2>Добро пожаловать <?php echo "Пётр Иванович Кандратьев"?></h2>
        </header>
        <div class="info">
            <div class="employers">
                <?php
                    $offset = intval(file_get_contents("offset.txt"));
                    $conn = new mysqli("localhost", "root", "", "falaleev_lp");
                    $sql = "SELECT Employees.fullname, Departments.name 
                    FROM Employees, Departments 
                    WHERE department_id = 1 
                    LIMIT 5 OFFSET $offset;";
                    if($result = $conn->query($sql)){
                        echo "<table class='employers'>";
                        echo "<tr class='table_head'>";
                        echo "<td>Ф.И.О Сотрудника</td>";
                        echo "<td>Отдел</td>";
                        echo "</tr>";
                        foreach($result as $row){
                            echo "<tr class='table_item'>";
                            echo    "<td>".$row["fullname"]."</td>";
                            echo    "<td>".$row["name"]."</td>";
                            echo "</tr>";
                        }
                        echo "</table>";
                       
                    }
                ?>
            </div>
            <div class="navigation">
                    <?php echo $offset;?>
                    <form method="post">
                        <input class='nav_button' type="submit" value="<<" name="<<">
                        <input class='nav_button' type="submit" value="<" name="<">
                        <input class='nav_button' type="submit" value=">" name=">">
                        <input class='nav_button' type="submit" value=">>" name=">>">
                    </form>
            </div>
        </div>
    </div>
</body>
</html>
<?php
    if(isset($_POST['<'])) {
        $offset -= 5;
        file_put_contents("offset.txt", $offset);
    } else if (isset($_POST['>'])) {
        $offset += 5;
        file_put_contents("offset.txt", $offset);
    } else if (isset($_POST['<<'])) {
        $offset -= 10;
        file_put_contents("offset.txt", $offset);
    } else if (isset($_POST['>>'])) {
        $offset += 10;
        file_put_contents("offset.txt", $offset);
    }
?>