<?php
$date = date('H:i, jS F Y');
?>
<html>
<head>
<link type="text/css" rel="stylesheet" href="stylesheet.css"/>
    <title>Спасибо!</title>
</head>
<body>
<div id = 'content'>
<?php
$adress = $_SERVER["REMOTE_ADDR"];
$browser = $_SERVER['HTTP_USER_AGENT'];
// создание коротких имен переменных
$Number = $_GET['Number'];
$User_name = $_GET['User_name'];
$Email = $_GET['Email'];
$Homepage = $_GET['Homepage'];
$Opinion = trim($_GET['Opinion']);
$Red1 = $_GET['Red1'];
$Red2 = $_GET['Red2'];
$Red3 = $_GET['Red3'];
$Kapcha = $_GET['Kapcha'];
//$tekstr=$_GET['$tekstr'];
$chislo3 = $_GET['chislo3'];
$updater = $_GET['updater'];
if (!$User_name || !$Email ||!$Kapcha || !$Opinion ) {
    echo "<br/><H3>Вы не заполнили все обязатльные поля.<br /><br/>" .
        "Вернитесь на предыдущую страницу и повторите ввод.</H3>
		 <a href='main.php?User_name=$User_name&Email=$Email&Homepage=$Homepage&Opinion=$Opinion'>повторить ввод</a>";
    exit;
}

if($Kapcha!=$chislo3){
	echo"<br/>Внимание, ошибка! Ваш отзыв не записан!Будьте внимательнее про проведении арифметической операции <br/>
	<a href='main.php?User_name=$User_name&Email=$Email&Homepage=$Homepage&Opinion=$Opinion'>повторить ввод</a>";
	exit;
}

if ($Homepage) {
    if (filter_var($Homepage, FILTER_VALIDATE_URL)) {
        echo "";
    } else {
        echo "<h3>Адрес Домашней старницы введён НЕ верно <br/>
		 Вернитесь на предыдущую страницу и повторите ввод <br/></H3>
		 Я вам помогу
		 <a href='main.php?Homepage=http://&User_name=$User_name&Email=$Email&Opinion=$Opinion&Red1=border:2px solid red'>Жми</a>";
        exit;
    }
};

$regVyr = '/^[A-Za-z0-9]+$/';

if (!preg_match($regVyr, $User_name))  {
    echo "<br/><h3>Внимание! Имя пользователя длжно содержать только буквы и цифры</h3><br/>" .
        "<a href='main.php?User_name=$User_name&Email=$Email&Homepage=$Homepage&Opinion=$Opinion&Red2=border:2px solid red'>повторить ввод</a>";
    exit;
}

if (!preg_match("/([a-z0-9_-]+\.)*[a-z0-9_-]+@[a-z0-9_-]+(\.[a-z0-9_-]+)*\.[a-z]{2,6}$/", $Email)) {
    echo "<br/><br/><h3>E-mail введён не верно</h3>
     Правильный пример<h4>  yurec@mail.ru </h4>
  		<a href='main.php?User_name=$User_name&Email=$Email&Homepage=$Homepage&Opinion=$Opinion&Red3=border:2px solid red'>повторить ввод</a> ";
    exit;
}
if (!get_magic_quotes_gpc()) {
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
?>
<div id = 'header'>
<?php
if($updater==1){
	$text_zaprosa3 = " UPDATE users SET  User_name='$User_name',Email='$Email',Homepage='$Homepage',Opinion='$Opinion' WHERE Number='$Number'";
      $result4 = $db->query($text_zaprosa3);
        if ($result4) {
            echo  "<br/> $db->affected_rows отзыв успешно отредактирован и добавлен в базу данных.";
  }         else {
            echo "<br/> Произошла ошибка. Отзыв не занесён.";
  }
} else{
$query = "insert into users values
           ('" . $Number . "','" . $User_name . "', '" . $Email . "', '" . $Homepage . "', '" . $Opinion . "','" . $adress . "','" . $date . "','" . $browser . "')";
$result = $db->query($query);
if ($result) {
    echo "<h3> $db->affected_rows отзыв успешно добавлен в базу данных.</h3>";
} else {
    echo "<br/> Произошла ошибка. Отзыв не занесён.";
}
}
$text_zaprosa = "SELECT * FROM `users`";
$result100 = $db->query($text_zaprosa);        ?>
       </div>
<?php 
echo "<table id='table1' border=10 CELLSPACING=3 WIDTH=1000 align='center' >
      
  <tr>
           <th>User_name</th>
           <th>Homepage</th/>
           <th>Email</th>
           <th>Opinion</th>
		   <th>IP_Adress</th>
		   <th>Date</th>
		   <th>browser</th>
        </tr>   
        <tr>   
           <td>$User_name</td>
           <td>$Homepage</td>
           <td>$Email</td>
           <td>$Opinion</td>
		   <td>$adress</td>
		   <td>$date</td>
		   <td>$browser</td>
        </tr> 
</table>";
$db->close();
$tekstr=(int)1;
echo "<a href='all_comments.php?tekstr=$tekstr'>
<input id='input11' type='submit' value='Смотреть все отзывы' /></a>";
echo ($userfile);
?>
</div>
<div id='footer'>
<div class="lemon">
        </div>
<h3>Спасибо что оставили запись в нашей гостевой книге</h3>
</div>
</body>
</html>