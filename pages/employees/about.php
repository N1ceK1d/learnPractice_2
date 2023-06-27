<!DOCTYPE html>
<html lang="en">
<head>
<?php session_start();?>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo $_SESSION['fullname']?></title>
    <link rel="stylesheet" href="../../style/style.css">
    <link rel="stylesheet" href="../../style/about.css">
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
                $sql = "SELECT Bosses.fullname as boss FROM Bosses
                INNER JOIN Departments ON Bosses.department_id = Departments.id
                WHERE Departments.name = '".$_SESSION['name']."';";
                $boss = "";
                if($result = $conn->query($sql)){
                    
                    foreach($result as $row){
                        $boss = $row['boss'];
                    }
                }
            ?>
            <h2><?php echo $_SESSION['fullname']?></h2>
            <p><?php echo "Отдел: ".$_SESSION['name']?></p>
            <p><?php echo "Опыт работы: ".$_SESSION['exp']?></p>
            <p><?php echo "Начальник: ".$boss?></p>
        </div>
    </div>
    
</body>
</html>