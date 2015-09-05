
$(document).ready(function() {
	var znachenije_input3,znachenije_user_name,znachenije_e_mail,znachenije_h_omepage,znachenije_o_pinion;
	var znachenije_input7;
		
  
	if(otvet==1 || !otvet){
		$('.lemon').fadeOut(2000).fadeIn(6000);}
	else { 
		alert("Ну и зря.Смотри он исчезнет и никогда-никогда не появится");	
        $('.lemon').fadeOut(8000);		
	}
			
	
	//  функциональность нопки проверить
$('#input1').click(function(){
		   znachenije_input3 = $('#input3').val();
		   znachenije_input7 = $('#input7').val();
		  if(znachenije_input3==znachenije_input7){
			  alert('Верно');
		  } else {
			  alert('Считай лучше!');
		  }
			});
    	
		znachenije_user_name = $('#user_name').val();
		
		
$('#input10').click(function(eventObject){	
       znachenije_input3 = $('#input3').val();
       znachenije_input7 = $('#input7').val();
       znachenije_user_name = $('#user_name').val();
	   znachenije_e_mail = $('#e_mail').val();
	   znachenije_h_omepage = $('#h_omepage').val();
	   znachenije_o_pinion = $('#o_pinion').val();
       
	   if(!znachenije_user_name || !znachenije_e_mail || !znachenije_o_pinion || !znachenije_input3){
		   eventObject.preventDefault();
		   alert("Вы  не заполнили все обязательные поля");
		   exit;
	   } 
	   	   
		  var regVU_name = /^[A-Za-z0-9]+$/;
	   
	 	    if (!regVU_name.test(znachenije_user_name)){
		    eventObject.preventDefault();
		   alert("Имя пользователя должно содержать только латинские буквы и цифры!");	                        	   
	   }   
		   
	    var regVE_mail = /([a-z0-9_-]+\.)*[a-z0-9_-]+@[a-z0-9_-]+(\.[a-z0-9_-]+)*\.[a-z]{2,6}$/
	       if (!regVE_mail.test(znachenije_e_mail)){
		    eventObject.preventDefault();
		   alert("Правильно напиши e-mail. Например так: yurasik-48w@yandex.ru");	                        	   
	   }
	   
	   	var regVH_page = /^http:\/\/([A-Za-z0-9_+-]+).([a-z])+$/;
		if(znachenije_h_omepage){		
	    if (!regVH_page.test(znachenije_h_omepage)){
		    eventObject.preventDefault();
		   alert("Правильно введите адрес домашней страницы!");	                        	   
		}}
    });
});



	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
