// Go to https://theonegenerator.com to get Random Person data
let txt="";
let j = 1;
for(i=0;i<10000;i++){

    /*setTimeout(function(){
        document.getElementsByTagName('button')[6].click();
    }, 1000*i);

    setTimeout(function(){
        txt += document.getElementById('copyToClipboard-name').value + "\n";
        console.log(document.getElementById('copyToClipboard-name').value + " (" + j + ")" );
        j++;
    }, 1000*i+1000);*/

    /*setTimeout(function(){
        document.getElementsByTagName('button')[17].click();
    }, 500*i);

    setTimeout(function(){
        txt += document.getElementById('copyToClipboard-maskedNumber').value + "\n";
        console.log(document.getElementById('copyToClipboard-maskedNumber').value + " (" + j + ")");
        j++;
    }, 500*i+500);*/

    /*setTimeout(function(){
        document.getElementsByTagName('button')[9].click();
    }, 500*i);

    setTimeout(function(){
        txt += document.getElementById('copyToClipboard-email').value + "\n";
        console.log(document.getElementById('copyToClipboard-email').value + " (" + j + ")");
        j++;
    }, 500*i+500);*/

    setTimeout(function(){
        document.getElementsByTagName('button')[17].click();
    }, 500*i);

    setTimeout(function(){
        txt += document.getElementById('copyToClipboard-dateGen').value + "\n";
        console.log(document.getElementById('copyToClipboard-dateGen').value + " (" + j + ")");
        j++;
    }, 500*i+500);

    /*setTimeout(function(){
        let num = Math.floor(Math.random() * 1);
        if (num = 0)
        txt += "MASCULINO" + "\t";
        else
        txt += "FEMININO" + "\t";
        console.log("Gender added");
    }, 1000*i);

    setTimeout(function(){
        let num = Math.floor(Math.random() * 2);
        txt += (num+1) + "\t";
        console.log("Type code added");
    }, 1000*i);

    setTimeout(function(){
        let num = Math.floor(Math.random() * 2);
        txt += (num+1) + "\n";
        console.log("Status code added");
    }, 1000*i);*/
    
};

setTimeout(function(){
    console.log(txt);
}, 500*i+1000);