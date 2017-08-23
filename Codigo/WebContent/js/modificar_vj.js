$(".cambio").click(function (e) {
    e.preventDefault();
    var id=$(this).val();
    
    $(this).removeClass();
    $(this).addClass("hide");
    $("#enlace"+id).removeClass();
    $("#enlace"+id).addClass("show")
    $("#nombre"+id).removeClass();
    $("#nombre"+id).addClass("hide");
    $("#inputName"+id).removeClass();
    $("#inputName"+id).addClass("show");
    
   $("#inputName"+id).val( $("#nombre"+id).text());
    
    
    
    $("#categoria"+id).removeClass();
    $("#categoria"+id).addClass("hide");
    $("#inputCat"+id).removeClass();
    $("#inputCat"+id).addClass("show");
    
    $("#inputCat"+id).val( $("#categoria"+id).text());
    
    
    $("#plataforma"+id).removeClass();
    $("#plataforma"+id).addClass("hide");
    $("#inputPla"+id).removeClass();
    $("#inputPla"+id).addClass("show");
    
    $("#inputPla"+id).val( $("#plataforma"+id).text());
    
    
    $("#lanzamiento"+id).removeClass();
    $("#lanzamiento"+id).addClass("hide");
    $("#inputLan"+id).removeClass();
    $("#inputLan"+id).addClass("show");
    
    $("#inputLan"+id).val( $("#lanzamiento"+id).text());
    
    $("#precio"+id).removeClass();
    $("#precio"+id).addClass("hide");
    $("#inputPr"+id).removeClass();
    $("#inputPr"+id).addClass("show");
    
    $("#inputPr"+id).val( $("#precio"+id).text());
    
    $("#stock"+id).removeClass();
    $("#stock"+id).addClass("hide");
    $("#inputSt"+id).removeClass();
    $("#inputSt"+id).addClass("show");
    
    $("#inputSt"+id).val( $("#stock"+id).text());
    
    
    
             
                
   
});