window.onload = function() {
    var ayoslider = document.querySelector(".slider");
    var volText = document.querySelector(".funynhaha");
    var disableVol = document.querySelector(".disButton");
    var testbtn = document.querySelector(".testbtn")
    let gameVol = document.querySelector(".epicgame");
    var disVol = false
    var storedVolume = localStorage.getItem("savedVolume");
    if (storedVolume) {
        volText.textContent = storedVolume;
        ayoslider.value = storedVolume;
        gameVol.volume = storedVolume;
    } else {
        volText.textContent = ayoslider.value;
        gameVol.volume = storedVolume;
    }

    ayoslider.addEventListener("input", num => {
        volText.textContent = num.target.value;
        gameVol.video.volume = storedVolume;
    })
    
    const saveVolume = () => {
        localStorage.setItem("volume", ayoslider.value);
    }

    const disableVolume = () => {
        if (disVol == false) {
            ayoslider.disabled = true;
            volText.textContent = 0;
            ayoslider.style.opacity = .5;
            disVol = !disVol;
        } else {
            console.log(storedVolume)
            ayoslider.disabled = false;
            disVol = !disVol;
            ayoslider.style.opacity = 1;
        }
    
    }
    function uhh() {
        winning()
    }
    testbtn.addEventListener("click", uhh())
    ayoslider.addEventListener("input", saveVolume)
    disableVol.addEventListener("click", disableVolume)
}