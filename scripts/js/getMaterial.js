// Go to https://dicasdacasa.net/lista-de-material-de-construcao/ to get material data
let txt="";
let j = 1;
for(i=0;i<64;i++){

    setTimeout(function(){
        txt += document.getElementsByTagName('li')[j].innerText + "\n";
        console.log(document.getElementsByTagName('li')[j].innerText + " (" + j + ")" );
        j++;
    }, 500*i+500);

}

setTimeout(function(){
    console.log(txt);
}, 500*i+1000);