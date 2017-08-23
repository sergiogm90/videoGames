$(".accordion-titulo").click(function(e){
           
        e.preventDefault();
    
        var contenido=$(this).next(".accordion-content");

        if(contenido.css("display")=="none"){ //open        
          contenido.slideDown(500);         
          $(this).addClass("open");
        }
        else{ //close       
          contenido.slideUp(500);
          $(this).removeClass("open");  
        }

      });
