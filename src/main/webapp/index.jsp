<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MusicApp</title>
        <!--Aplicamos los estilos CSS directamente en esta clase-->
         <style>
             /*importamos las google fonts*/
             @import url('https://fonts.googleapis.com/css2?family=Bungee&family=Chakra+Petch:wght@300&family=Kaushan+Script&family=Khand:wght@500&family=Oswald:wght@700&family=Sedgwick+Ave+Display&family=Ultra&display=swap');
        body 
        {
            background-image: url('https://img.freepik.com/free-vector/gradient-geometric-design-dark-background_23-2148425667.jpg?w=740&t=st=1693801221~exp=1693801821~hmac=34c0d6080982f1fd03cb3717bba67db5629de183cb63a96a04c3ec317a0d4093'); /* Cambia 'tu-imagen-de-fondo.jpg' por la URL de tu imagen de fondo */           
             /* Esto ajustará la imagen al 100% del ancho y alto del contenedor */
            background-size: 100% 250%;
            background-repeat: no-repeat;
            font-family: 'Chakra Petch', sans-serif;
            /* Color del texto */
            color: #ffffff;           
            background-size: cover;
            background-position: center;
             /* Centra el contenido en el cuerpo */
            text-align: center;
        }       
        
        h1 
        {
            text-align: center;
            /* Ajusta la distancia desde la parte superior según sea necesario */
            margin-top: 100px; 
             /* Tamaño del título */
            font-size: 40px;
            color: #ffffff;
        }

        ul 
        {
            list-style-type: none;
            text-align: center;
            /* Espacio entre el título y la lista */
            margin-top: 30px; 
        }

        li 
        {
             /* Espacio entre elementos de la lista */   
            margin-bottom: auto;         
        }

        a {
            text-decoration: none;
            /* Color de los enlaces */
            color: #ffffff; 
             /* Color de fondo de los enlaces */
            background-color: #8673a1;
             /* Espaciado interior de los enlaces */
            padding: 15px 25px;
            /* Bordes redondeados */
            border-radius: 15px;             
            display: inline-block;
            /* Borde de color gris */
            border: 2px solid #dddbef; 

        }

        a:hover
        {
            /* Color de fondo al pasar el mouse por encima */
            background-color: #9a95da; 
        }
        
         #logo-container
         {
             /* Ajusta la distancia desde la parte superior según sea necesario */        
            margin-top: auto; 
        }
        /*agregamos cuatro iamgenes*/
       .image-container
       {
            display: inline-block;
             /* Ancho del contenedor de imagen */
            width: auto;
             /* Espacio entre las imágenes */
            margin: 100px;
            /* Borde gris de 2px */
            border: 2px solid #ccc; 
             /* Borde redondeado */
            border-radius: 20px;
            /* Oculta cualquier parte de la imagen que esté fuera del contenedor */
            overflow: hidden; 
            /* Ajusta la distancia desde la parte superior según sea necesario */
            margin-top: auto;         
        }

        .image-container img
        {
            /* Evita que las imágenes se agranden más allá de su tamaño original */
            max-width: auto;
            display: block;
            /* Centra las imágenes horizontalmente en sus contenedores */
            margin: auto; 
        }
    </style>
    </head>
    <body>

        <div id="logo-container" style="text-align: center;">
        <img src="https://freesvg.org/img/1548005024.png" style="width: 150px; height: auto;" alt="Logo MusicApp"> 
        <h1>Video Player</h1>
        </div>
        <ul>
            <li style="margin-bottom: 10px;"><a href="agregarVideo.jsp">Agregar un nuevo video</a></li>
            <li><a href="listarVideos.jsp">Lista de videos</a></li>            
        </ul>
    </body>
      <!-- Contenedor de imágenes -->
    <div class="image-container">
        <img src="https://media.istockphoto.com/id/1183921035/es/vector/gesto-de-signo-de-roca-con-rel%C3%A1mpagos-para-su-dise%C3%B1o.jpg?s=612x612&w=0&k=20&c=8eiqp-BflbOIKzMArorU2qc92oWVu4p7K_aHZ9iC_gQ=" style="width: 150px; height: 180px;" alt="Imagen 1">
    </div>
    <div class="image-container">
        <img src="https://previews.123rf.com/images/paseven/paseven1904/paseven190400075/121083850-banner-con-palabras-m%C3%BAsica-rock-con-guitarra-el%C3%A9ctrica-y-alas-en-llamas.jpg"  style="width: 150px; height: auto;" alt="Imagen 2"> 
    </div>
</html>
