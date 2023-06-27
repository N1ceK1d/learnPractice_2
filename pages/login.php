<?php
$login = $_POST['l_login'];
$password = $_POST['l_password'];
$table = "";
// employee и boss
if(strpos($login, 'employee') !== false)
{
    echo "Вы работник";
    //$sql = "SELECT * FROM Employees WHERE login = '$login' AND password = '$password'";
    $table = "Employees";
} else {
    echo "Вы босс";
    $table = "Bosses";
}
$conn = new mysqli("localhost", "root", "", "falaleev_lp");
//$sql = "SELECT * FROM Employees WHERE login = '$login' AND password = '$password'";
$sql = "SELECT $table.id, $table.fullname, Departments.name, $table.experience 
FROM $table, Departments
WHERE login = '$login' AND password = '$password' AND $table.department_id = Departments.id;";

$result = $conn->query($sql);

if(mysqli_num_rows($result))
{
    session_start();
    echo "Вы успешно авторизованы";
    $user = [];
    foreach($result as $row) 
    {
        $_SESSION['id'] = $row['id'];
        $_SESSION['fullname'] = $row['fullname'];
        $_SESSION['name'] = $row['name'];
        $_SESSION['exp'] = $row['experience'];
        $_SESSION['type'] = $table;
        $_SESSION['user'] = $user;
        var_dump($_SESSION['user']);
    }
    echo $_SESSION['fullname'];
    if($table == "Employees") {
        header("Location: employees/index.php");
    } else {
        header("Location: boss/index.php");
    }
} else {
    echo "Ошибка: Введены неверные данные";
}

