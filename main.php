<?php
$Number = $_GET ['Number'];
$User_name = $_GET['User_name'];
$Email = $_GET['Email'];
$Homepage = $_GET['Homepage'];
$Opinion = $_GET['Opinion'];
$Red1 = $_GET['Red1'];
$Red2 = $_GET['Red2'];
$Red3 = $_GET['Red3'];
$updater = $_GET['updater'];
$p_chislo_sl3=$_GET['p_chislo_sl3'];
?>

<html>
<head>
<link type="text/css" rel="stylesheet" href="stylesheet.css"/> 
<script type="text/javascript" src="js/jquery.js"></script> 
<script type="text/javascript" src="js/Scripts.js"></script>          
 
  <title>Гостевая книга </title>
</head>
<body>
<div id = 'header'>
<h2>Вас приветствует гостевая книга</h2>
<img id='img1' src='images/93248146.gif'/>
</div>
<div id = 'content'>
      <h2>Заполните поля</h2>
    <form  id ='my_form' action="your_comment.php" method="GET" enctype = "multipart/form-data">
  <INPUT TYPE="hidden" name="MAX_FILE_SIZE" value="1000000"><!-- макс. размер -->
  		<?php
		  $chislo1 = rand(1,15); $chislo2 = rand(1,15);
	  	  $chislo3 =$chislo1+$chislo2;
		  echo "	  
	      <p> User name *<br />
      <input title='имя пользователя может содержать только латинские буквы и цифры'id = 'user_name' type='text' style='$Red2'  name='User_name' value='$User_name' size='32' maxlength='40' />
    </p>
    <p>Адрес e-mail *<br />
      <input title='Например IvanIvanovich@tut.by' id = 'e_mail' type='text' style='$Red3;' name='Email' value='$Email' size='32' maxlength='40' />
    </p>
	<p>Homepage <br />
	<input title='вводите homepage в формате http://' id = 'h_omepage' type='text' style='$Red1;' name='Homepage' value='$Homepage'  size='32' maxlength='40' /> ";
	echo"
	  <p>Вычислите результат выражения*<br />
	  $chislo1 + $chislo2 =
	  <input id = 'input3' type='text' style=''  name='Kapcha' value='$Kapcha' size='2' maxlength='2' />
	  <input type='hidden' name = 'updater' value='$updater'/>
	  <input type='hidden' name = 'Number' value='$Number'/>
      <input id = 'input7' type='hidden' style=''  name='chislo3' value='$chislo3' size='2' maxlength='2' />
	  <input id = 'input1' type='button' style=''  name='proverka1' value='Проверить!'  />";?>
	  	  
	  <script type="text/javascript">
	  var chislo_sl,chislo_sl2,chislo_sl3;
var result1 =  '<?php echo $Kapcha."<br/>";?>';
//Обработчик капчи javascript
var ch3 = '<?php echo $chislo3."<br/>";?>';
var ch2 = '<?php echo $chislo2."<br/>";?>';
var ch1 = '<?php echo $chislo1."<br/>";?>';
document.write(znachenije_input3);
	  </script>
	  	  <?php
	  	 echo"
	<p>Ваш отзыв *<br />		
      <textarea id = 'o_pinion' name='Opinion' rows='6' cols='26'>$Opinion</textarea>
    </p>";	
/*<label for = 'userfile'>Загрузить файл:</label>
  <input type='file' name='userfile' id='userfile'/>*/
  echo"<input id = 'input10' type='submit' value='Отправить отзыв' />";   
    ?>
</form>
* - поле обязательное к заполнению
</div>
<div id='footer'>
        <div class="lemon">
        </div>
</div>
</body>
</html>