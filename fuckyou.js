import * as fs from 'fs';

var table = document.getElementById("modTable")
_readFile('./mods.json', 'utf8', (jsonString) => {
    return JSON.parse(jsonString);
})

function buildTable(data) {
    for (var i = 0; i < data.length; i++) {
        var row = "<tr><td>${data[i].mod}</td></tr>"
        table.innerHTML += row
    }
}
buildTable(readFile("mods.json"))
$(document).ready(function() {
    $.getJSON("mods.json", function(data) {
        var mod_data = '';
        $.each(data, function(key, value) {
            console.log(value.modLink)
            mod_data += "<tr>";
            mod_data += '<td style="color: rgb(212, 225, 212);">' + value.modLink + "</td>";
            mod_data += '<td style="color: rgb(212, 225, 212);">' + value.mod + "</td>";
            mod_data += "</tr>"
        });
        $("#table").append(mod_data);
    });
});