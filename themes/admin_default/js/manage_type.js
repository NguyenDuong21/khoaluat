$(".btn-update").on("click", function(){
    let id_cat = $(this).data('id');
    let name_cat = $(this).parents("tr").find("td.name_cat").html();
    $('input[name="id_cat"]').val(id_cat);
    $('input[name="tentheloai"]').val(name_cat);
    $("#btn_handel").html('Sửa');
    $("#btn_handel").attr("name",'sua');
    $("#btn_exit").css("visibility","visible");
});
$("#btn_exit").on('click', function(){
    $("#btn_exit").css("visibility","hidden");
    $("#btn_handel").attr("name",'them');
    $("#btn_handel").html('Thêm');
    $('input[name="tentheloai"]').val('');
});