<html>
<head>
    <title>Список отзывов</title>
    <link type="text/css" rel="stylesheet" href="stylesheet.css"/>
	<script type="text/javascript" src="js/jquery.js"></script> 
    <script type="text/javascript" src="js/Scripts.js"></script> 
</head>
<body>
<div id='header'>
<h2>Список отзывов</h2>
<img id='img1' src='images/93248146.gif'/>
</div>
<div id='content'>
<?php
$Number = $_POST['Number'];
$User_name = $_POST['User_name'];
$Email = $_POST['Email'];
$Homepage = $_POST['Homepage'];
$Opinion = $_POST['Opinion'];
$column = $_GET['column'];
$sortirovka = $_GET['sortirovka'];
$first = $_GET['first'];
$tekstr = (int)$_GET['tekstr'];
$vsegostranic = $_GET['vsegostranic'];
$updater = $_GET['updater'];
$tut=$_GET['tut'];
$withTut=$_GET['withTut'];

if ($tut==2)
{$withTut=1;}
else {$withTut=2;}

$db = new mysqli('localhost', 'root', '', 'my_page');
if (mysqli_connect_errno()) {
    echo "Ошибка: Не удалось установить соединение" .
        " с базой данных. Повторите попытку позже.";
    exit;
}
if ($column) {
    $stroka = "order by $column $sortirovka";
}
$update=1;
$kolvoradov = 6;
$prom = $tekstr - 1;
$first = $prom * 6;
$text_zaprosa = "SELECT * FROM `users` $stroka Limit $first,$kolvoradov  ";
$result1 = $db->query($text_zaprosa);
$vybrat_zapisi = "SELECT count(*) FROM `users`";
$Zapis = $db->query($vybrat_zapisi);
$vsego_zapisej = $Zapis->fetch_array();
$kolvo_zapisej = ($vsego_zapisej[0]);
$vsegostranic = ceil($kolvo_zapisej / $kolvoradov);

echo "<table class='table2' border=10 CELLSPACING=0 WIDTH=1000 align='center'>
  <tr>
  <td><a href='all_comments.php?column=Number&sortirovka=asc&tekstr=$tekstr&tut=$tut'>По возрастанию</a></td>
  <td><a href='all_comments.php?column=User_name&sortirovka=asc&tekstr=$tekstr&tut=$tut'>По возрастанию</a></td>
  <td><a href='all_comments.php?column=Email&sortirovka=asc&tekstr=$tekstr&tut=$tut'>По возрастанию</a></td>
  <td><a href='all_comments.php?column=Homepage&sortirovka=asc&tekstr=$tekstr&tut=$tut'>По возрастанию</a></td>
  <td><a href='all_comments.php?column=Opinion&sortirovka=asc&tekstr=$tekstr&tut=$tut'>По возрастанию</a></td>
  <td><a href='all_comments.php?column=Date&sortirovka=asc&tekstr=$tekstr&tut=$tut'>По возрастанию</a></td>
  <td><a href='all_comments.php?column=adress&sortirovka=asc&tekstr=$tekstr&tut=$tut'>По возрастанию</a></td>
  <td></td>
  <td></td>
  </tr>
  <tr>
  <td><a href='all_comments.php?column=Number&sortirovka=desc&tekstr=$tekstr&tut=$tut'>По убыванию</a></td>
  <td><a href='all_comments.php?column=User_name&sortirovka=desc&tekstr=$tekstr&tut=$tut'>По убыванию</a></td>
  <td><a href='all_comments.php?column=Email&sortirovka=desc&tekstr=$tekstr&tut=$tut'>По убыванию</a></td>
  <td><a href='all_comments.php?column=Homepage&sortirovka=desc&tekstr=$tekstr&tut=$tut'>По убыванию</a></td>
  <td><a href='all_comments.php?column=Opinion&sortirovka=desc&tekstr=$tekstr&tut=$tut'>По убыванию</a></td>
  <td><a href='all_comments.php?column=Date&sortirovka=desc&tekstr=$tekstr&tut=$tut'>По убыванию</a></td>
  <td><a href='all_comments.php?column=adress&sortirovka=desc&tekstr=$tekstr&tut=$tut'>По убыванию</a></td>
  <td></td>
  <td></td>
  </tr>
  <tr>
  <th>Number</th>
  <th>User_Name</th>
  <th>Email</th>
  <th>Homepage</th>
  <th>Opinion</th>
  <th>Date</th>
  <th>IP_Adress</th>
  <th></th>
  <th></th>
  
  </tr>";
while ($row = $result1->fetch_assoc()) {
    printf("
	  <tr>
	    <td>%s</td>
        <td>%s</td>
        <td>%s</td>
        <td>%s</td>
        <td>%s</td>
		<td>%s</td>
		<td>%s</td>",
		$row['Number'], $row['User_name'], $row['Email'], $row['Homepage'], $row['Opinion'], $row['Date'], $row['adress'] . "
 <td><a href='delete_comment.php?Number=$row[Number]&tut=$tut'>Удалить отзыв</a></td>
 <td><a href='main.php?Number=$row[Number]&User_name=$row[User_name]&Email=$row[Email]&Homepage=$row[Homepage]&Opinion=$row[Opinion]&updater=1&tut=$tut&withTut=$withTut'>Редактировать отзыв</a></td>
</tr>");
}
echo "</table>";
$db->close();
?>
<div class='validation'>
<?php

if ($tekstr == 1) {
    echo "<b>1</b>
          <a href='all_comments.php?tekstr=2&tut=$tut'>2</a>
          <a href='all_comments.php?tekstr=3&tut=$tut'>3</a>...
          <a href='all_comments.php?tekstr=$vsegostranic&tut=$tut'>последняя</a>
          <a href='all_comments.php?tekstr=2&tut=$tut'>следующая</a>";
}
if ($tekstr == 2) {
    echo "<a href='all_comments.php?tekstr=1&tut=$tut'>предыдущая</a>
          <a href='all_comments.php?tekstr=1&tut=$tut'>1</a>
          <b>$tekstr</b>
          <a href='all_comments.php?tekstr=3&tut=$tut'>3</a>
          <a href='all_comments.php?tekstr=4&tut=$tut'>4</a>...
          <a href='all_comments.php?tekstr=$vsegostranic&tut=$tut'>последняя</a>
          <a href='all_comments.php?tekstr=3&tut=$tut'>следующая</a>";
}
if ($tekstr >= 3 and $tekstr <= $vsegostranic - 2) {
    $tekstr = $tekstr - 1;
    echo "<a href='all_comments.php?tekstr=$tekstr&tut=$tut'> предыдущая</a>";
    $tekstr = $tekstr + 1;
    echo "<a href='all_comments.php?tekstr=1&tut=$tut'> первая...</a>";

    for ($i = $tekstr - 2; $i <= $tekstr + 2; $i++) {
        if ($tekstr == $i) {
            echo "<b>$i</b>";
        } else {
            echo "<a href='all_comments.php?tekstr=$i&tut=$tut'> $i </a>";
        }

    }
    echo "<a href='all_comments.php?tekstr=$vsegostranic&tut=$tut'>...последняя</a>";
    $tekstr = $tekstr + 1;
    echo "<a href='all_comments.php?tekstr=$tekstr&tut=$tut'> следующая</a>";
    $tekstr = $tekstr - 1;
}
if ($tekstr > $vsegostranic - 2 and $tekstr < $vsegostranic) {
    $tekstr = $tekstr - 1;
    echo "<a href='all_comments.php?tekstr=$tekstr&tut=$tut'>предыдущая</a>";
    echo "<a href='all_comments.php?tekstr=1&tut=$tut'>  первая</a>";
    $tekstr = $tekstr - 1;
    echo "<a href='all_comments.php?tekstr=$tekstr&tut=$tut'>... $tekstr</a>";
    $tekstr = $tekstr +1;
    echo "<a href='all_comments.php?tekstr=$tekstr&tut=$tut'> $tekstr</a>";
    $tekstr = $tekstr + 1;
    echo "<b> $tekstr</b></a>";
    echo "<a href='all_comments.php?tekstr=$vsegostranic&tut=$tut'> $vsegostranic</a>";
    echo "<a href='all_comments.php?tekstr=$vsegostranic&tut=$tut'> следующая</a>";
}
if ($tekstr == $vsegostranic) {
    $tekstr = $tekstr - 1;
    echo "<a href='all_comments.php?tekstr=$tekstr&tut=$tut'> предыдущая</a>";
    $tekstr = $tekstr - 1;
    echo "<a href='all_comments.php?tekstr=1'>  первая...</a>";
    echo "<a href='all_comments.php?tekstr=$tekstr&tut=$tut'> $tekstr</a>";
    $tekstr = $tekstr + 1;
    echo "<a href='all_comments.php?tekstr=$tekstr&tut=$tut'> $tekstr</a>";
    $tekstr = $tekstr + 1;
    echo "<b> $tekstr</b></a>";
}
?>
</div>
</div>
<div id='footer'>
<? if($tut==1){echo"
<div class='lemon'>
        </div>";} ?>

<h3>Спасибо что оставили запись в нашей гостевой книге</h3>
</div>
</body>
</html>