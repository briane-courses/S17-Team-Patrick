$(".edit_button").on('click', function () {
    $(".edit").css("display", "block");
    event.preventDefault();
    return false;
});

$("#yes_edit, #no_edit").on('click', function () {
    $(".edit").css("display", "none");
    event.preventDefault();
    return false;
});

$("#add_button").on('click', function () {
    $(".add").css("display", "block");
    event.preventDefault();
    return false;
});

$("#btnAdd, #btnAddCancel").on('click', function () {
    $(".add").css("display", "none");
    event.preventDefault();
    return false;
});

$("#delete_button").on('click', function () {
    $(".delete").css("display", "block");
    event.preventDefault();
    return false;
});

$("#yes_delete, #no_delete").on('click', function () {
    $(".delete").css("display", "none");
    event.preventDefault();
    return false;
});
