<?php

session_start();
$_SESSION['id'] = '';
$_SESSION['fullname'] = '=';
$_SESSION['name'] = '';
$_SESSION['exp'] = '';
$_SESSION['type'] = '';
$_SESSION['user'] = '';
session_destroy();
header("Location: ../../index.php");