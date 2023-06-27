<!DOCTYPE html>
<html lang="en">
<head>
<?php session_start();?>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $_SESSION['fullname']?></title>
    <link rel="stylesheet" href="../../style/style.css">
</head>
<body>
<div class="menu">
            <div class='menu-list'>
                <a class='selected' href="index.php">Заявки</a>
                <a href="about.php">Обо мне</a>
                <form action="exit.php">
                    <input type="submit" value="Выйти" name='exit' class="exit_button" id="exBtn">
                </form>
            </div>
        </div>
    <div class="container">
        
        <header>
            <h2>Добро пожаловать <?php echo $_SESSION['fullname']?></h2>
        </header>
        <div class="info">
        <?php
                    $conn = new mysqli("localhost", "root", "", "falaleev_lp");
                    $sql = "SELECT Orders.order_date as ord_date, Orders.scope_of_work as dep_name, SpareParts.name as spare_name
                    FROM Orders
                    INNER JOIN Departments ON Orders.department_id = Departments.id
                    INNER JOIN SpareParts ON Orders.spare_id = SpareParts.id
                    where Departments.name = '".$_SESSION['name']."';";
                    if($result = $conn->query($sql)){
                        echo "<table class='employers'>";
                        echo "<tr class='table_head'>";
                        echo "<td>Название</td>";
                        echo "<td>Объём работы(недель)</td>";
                        echo "<td>Дата заказа</td>";
                        echo "</tr>";
                        foreach($result as $row){
                            echo "<tr class='table_item'>";
                            echo    "<td>".$row["spare_name"]."</td>";
                            echo    "<td>".$row["dep_name"]."</td>";
                            echo    "<td>".$row["ord_date"]."</td>";
                            echo "</tr>";
                        }
                        echo "</table>";
                       
                    }
                ?>
        </div>
    </div>
    
</body>
</html>