window.addEventListener("load", () => {
    const halcones = document.getElementById("halcones");
    const tepos = document.getElementById("tepos");
    const ajolotes = document.getElementById("ajolotes");
    const regresar = document.getElementById("btn-regresar");

    /*Falta reemplazar el console log por la dirección de la página principal*/
    halcones.addEventListener("click", ()=>{
        console.log("Tu casa es halcones");
    });

    tepos.addEventListener("click", ()=>{
        console.log("Tu casa es Teporingos");
    });

    ajolotes.addEventListener("click", ()=>{
        console.log("Tu casa es Ajolotes");
    });


    /*Reemplazar console log por la direccion de la página anterior*/
    regresar.addEventListener("click", ()=>{
        console.log("Página anterior");
    });
});


