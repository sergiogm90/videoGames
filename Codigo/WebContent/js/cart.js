$("#presupuesto").keyup(function (e) {
    e.preventDefault();
    var id=$(this).val();
    var cantidad = $("#cantidad").val();
    var precio = $("#precio").text();
    var total = $("#total").val();
    var resultado = precio * cantidad;
    $("#total"+id).empty();
   $("#total"+id).append("<p>"+resultado+"</p>");
});
$("#elimina").click(function (e) {
    e.preventDefault();
   $(this).closest('tr').remove();
   $('[data-toggle=confirmation]').confirmation({
  rootSelector: '[data-toggle=confirmation]',
  // other options
});
});
