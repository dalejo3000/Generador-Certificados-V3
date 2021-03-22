jQuery(document).ready(listo); /*También se puede utilizar el $, una vez que la web esta lista se hace cosas, con los elementos listos*/
/*function conjunto linea de codigos que puede generarse n cantidad de veces*/

function listo()
{
  jQuery(".hamb").click(function(e){/*Llamar a una función anónima*/
    e.preventDefault();
    /*Se agregará una clase adicional al nav, para que vuelva a su clase original*/
    jQuery("header .container nav").toggleClass("open");
    jQuery(".hamb i").toggleClass("fa-times");
  });

  jQuery("header .container nav a").click(function(){

    jQuery("header .container nav").removeClass("open");  /*Quite menu*/
    jQuery(".hamb i").removeClass("fa-times"); /*Cuando haga click a cualquier a, se remueve la clase; (Quite x)*/

    /*Una vez que se remueve obtengo el valor del atributo del boton que se hace click y se ve en que posición desde la parte de arriba se encuentra la posición del elemento seleccionado. */

    var dev = jQuery(this).attr("href"); /*A ese que se da click es el this, entonces a ese se llama el valor del atributo.*/
      /*alert(dev); Podemos confirmar si hace la llamada al atributo (borrar comentario)*/

    jQuery("html,body").animate({ /*Se puede modificar propiedades cn animate*/
      "scrollTop": jQuery(dev).offset().top -76 /*Seleccionar donde esta ubicado el elemento con id que hemos seleccionado*; Offset o position: Punto arriba de explorador a servicios... Dice cual es el valor con 2 opciones ep o top   */
    }) /**/
  });
}
