const mas=document.getElementById("sumar");
const menos=document.getElementById("restar");
const puntos=document.getElementById("puntos")
let pts=0;
puntos.innerHTML = `
        <div >tus puntos son:
            ${pts}
        </div>
        `
window.addEventListener("load",()=>{
    mas.addEventListener("click",()=>{
        pts++;
        console.log(pts);
        puntos.innerHTML = `
        <div >tus puntos son:
            ${pts}
        </div>
        `
    })
    menos.addEventListener("click",()=>{
        pts--;
        console.log(pts);
        puntos.innerHTML = `
        <div >tus puntos son:
            ${pts}
        </div>
        `
    })  
   
    // fetch("")
    // .then((respuesta)=>{

    // })
});
