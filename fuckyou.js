function click() {
    var dropdown = document.getElementById("update-dropdown");
    var text = document.getElementById("funnytext");
    dropdown.height(text.outerHeight(true));

    if (dropdown.hasClass("open")) {
        dropdown.removeClass("open");
        dropdown.height(0);
    } else {
        dropdown.addClass("open");
        dropdown.height(text.outerHeight(true))
    }
}