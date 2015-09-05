<html>
<head>
    <title>Спасибо!</title>
    <link type="text/css" rel="stylesheet" href="stylesheet.css"/>
	<script type="text/javascript" src="js/jquery.js"></script> 
<script type="text/javascript" src="js/Scripts.js"></script> 
</head>
<body>
<div id='header'>
<h2>Вы удалили отзыв</h2>
<img id='img1' src='images/93248146.gif'/>
</div>
<div id='content1'>
<?php
//создание коротких имен переменных
$Number = $_GET['Number'];
$User_name = $_POST['User_name'];
$Email = $_POST['Email'];
$Homepage = $_POST['Homepage'];
$Opinion = $_POST['Opinion'];
$first = $_GET['first'];
$tut=$_GET['tut'];



if (!get_magic_quotes_gpc()) {
    $Number = addslashes($Number);
    $User_name = addslashes($User_name);
    $Email = addslashes($Email);
    $Homepage = addslashes($Homepage);
    $Opinion = addslashes($Opinion);
}
$db = new mysqli('localhost', 'root', '', 'my_page');
if (mysqli_connect_errno()) {
    echo "Ошибка: Не удалось установить соединение" .
        " с базой данных. Повторите попытку позже.";
    exit;
}
$text_zaprosa2 = "DELETE FROM `users` WHERE Number='$Number'";
$result2 = $db->query($text_zaprosa2);
if ($result2) {
    echo "<br/><p id='p1'> $db->affected_rows отзыв удалён из базы данных.<br/>";
} else {
    echo "<br/> Произошла ошибка. Отзыв не удалён.";
}
echo"
<a href='all_comments.php?tekstr=1&tut=$tut'>
    <input id='input15' type='submit' value='смотреть все отзывы'> </a>";
?>
</div>
<div id='footer'>
<?php if($tut==1){echo"
<div class='lemon'>
        </div>
";} ?>

<h2>Благодарим за использование нашей гостевой книги</h2>
</div>
</body>
</html>