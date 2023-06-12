window.addEventListener("load", () => {
    const halcones = document.getElementById("halcones");
    const tepos = document.getElementById("tepos");
    const ajolotes = document.getElementById("ajolotes");
    const regresar = document.getElementById("btn-regresar");

    
    halcones.addEventListener("click", ()=>{
        window.location.href = "http://localhost/php/RepositoriosCW/Actividad_tepo/dynamics/principal_halcon.php";
    });

    tepos.addEventListener("click", ()=>{
        window.location.href = "http://localhost/php/RepositoriosCW/Actividad_tepo/dynamics/principal_teporingo.php";
    });

    ajolotes.addEventListener("click", ()=>{
        window.location.href = "http://localhost/php/RepositoriosCW/Actividad_tepo/dynamics/principal_ajolote.php";
    });


    /*Reemplazar console log por la direccion de la página anterior*/
    regresar.addEventListener("click", ()=>{
        console.log("Página anterior");
    });
});


