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

var engDropdownOpen = true

function engDropdown() {
    var dropdown = document.getElementById("eng_dropdown")

    if (engDropdownOpen == true) {
        dropdown.style.height = "0px";
        engDropdownOpen = false;
    } else {
        dropdown.style.height = "auto";
        engDropdownOpen = true;
    }
}