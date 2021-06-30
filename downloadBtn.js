function EngClick() {
    var van100Btn = document.getElementById("100x100_btn")
    var van100Page = document.getElementById("100x100_page")

    var engBtn = document.getElementById("enigmatica_btn")
    var engPage = document.getElementById("eng_page")

    van100Page.style.display = "none";
    engPage.style.display = "block";
    engBtn.className = "page_sel_button-selected";
    van100Btn.className = "page_sel_button";
}

function van100Click() {
    var van100Btn = document.getElementById("100x100_btn")
    var van100Page = document.getElementById("100x100_page")

    var engBtn = document.getElementById("enigmatica_btn")
    var engPage = document.getElementById("eng_page")

    van100Page.style.display = "block";
    engPage.style.display = "none";
    engBtn.className = "page_sel_button";
    van100Btn.className = "page_sel_button-selected";
}

var engDropdownOpen = false

function engDropdown() {
    var dropdown = document.getElementsByClassName("eng_dropdown_frame-open")

    if (engDropdownOpen == true) {
        dropdown[0].style.marginBottom = "0px";
        dropdown[0].style.height = "0px"
        engDropdownOpen = false;
    } else {
        dropdown[0].style.height = "68px";
        dropdown[0].style.marginBottom = "16px";
        engDropdownOpen = true;
    }
}