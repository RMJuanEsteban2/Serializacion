<%@page import="java.util.ArrayList"%>
<%@page import="com.umariana.mundo.Video"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MusicApp</title>
        
        <style>
            /* fuentes de google fonts añadidas*/
            @import url('https://fonts.googleapis.com/css2?family=Bungee&family=Chakra+Petch:wght@300&family=Kaushan+Script&family=Khand:wght@500&family=Oswald:wght@700&family=Sedgwick+Ave+Display&family=Ultra&display=swap');           
            @import url('https://fonts.googleapis.com/css2?family=Bungee&family=Chakra+Petch:wght@300&family=Kaushan+Script&family=Khand:wght@500&family=Oswald:wght@700&family=Permanent+Marker&family=Sedgwick+Ave+Display&family=Ultra&display=swap');
        body 
        {
            /* estilos para el contenido en general*/
            font-family: 'Chakra Petch', sans-serif;
            background-image: url('https://img.freepik.com/free-vector/gradient-geometric-design-dark-background_23-2148425667.jpg?w=740&t=st=1693801221~exp=1693801821~hmac=34c0d6080982f1fd03cb3717bba67db5629de183cb63a96a04c3ec317a0d4093');
            background-size: cover;
            background-position: center;
            color: #ffffff;
            text-align: center;
            margin: 0;
            padding: 0;
        }
        h1 
        {
            font-size: 36px;
            margin-top: 20px;
        }
        ul 
        {
            /*estilo para las etiquetas que lleven ul */
            list-style-type: none;
            padding: 0;
        }
        li
        {
            /*estilo para las etiquetas que lleven li o sea el boton */            
            margin-bottom: 10px;
        }
        a 
        {
            /* estilos para el boton*/
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
        
        a:hover {
            /* Color de fondo al pasar el mouse por encima */
            background-color: #9a95da; 
        }
        /*eestilos para el video, margen y tamaño */
          .video-info {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 20px;
            text-align: left;
            margin-top: 20px;
            margin-top: 30px;
            /* Centra verticalmente el contenido */
            align-items: center; 
        }
        /*estilos separados del video y del texto */
        .propertyVideo {
            /* Fondo semi-transparente */ 
            background-color: rgba(0, 0, 0, 0.4);
            padding: 5px;
            justify-content: right;
            text-align: center;
            border: 2px solid #ccc;
            border-radius: 10px;
            display: flex;
            flex-direction: column;
            margin-top: 30px;

        }
        .propertyTexto {
             /* Fondo semi-transparente */ 
            background-color: rgba(0, 0, 0, 0.4);
            margin-top: 30px;
            padding: 5px 50px;
            justify-content: right;
            text-align: center;
            border: 2px solid #ccc;
            border-radius: 10px;
            display: flex;
            flex-direction: column;
            
        }
        li {
            /* Espacio entre elementos de la lista */     
            margin-bottom: auto;       
        }
        
        </style>
</head>
<body>
    <div>
        <h1>Lista de videos</h1>
        <%
           ArrayList<Video> misVideos = (ArrayList<Video>)request.getAttribute("misVideos");
           for(Video v : misVideos) {
        %>
            <div class="video-info">         
            <div class="propertyTexto">
                    <!-- Texto "Título:" en una nueva línea -->
                    <div style="font-family: 'Permanent Marker', cursive;" >ID Video</div>
                    <!-- Texto del título en una nueva línea -->
                    <div style="font-family: 'Alice', serif;"><%= v.getIdVideo() %></div>
                    <br><!--hacemos salto para evitar cosas feas-->
                    <div style="font-family: 'Permanent Marker', cursive;" >Título</div>
                    <div style="font-family: 'Alice', serif;"><%= v.getTitulo() %></div>
                    <br>
                    <div style="font-family: 'Permanent Marker', cursive;" >Autor</div> 
                    <div style="font-family: 'Alice', serif;"><%= v.getAutor() %></div> 
                    <br>
                    <div style="font-family: 'Permanent Marker', cursive;" >Año</div> 
                    <div style="font-family: 'Alice', serif;"><%= v.getAnio() %></div>
                    <br>
                    <div style="font-family: 'Permanent Marker', cursive;" >Categoría</div> 
                    <div style="font-family: 'Alice', serif;"><%= v.getCategoria() %></div> 
                    <br>
                    <div style="font-family: 'Permanent Marker', cursive;" >Letra</div>
                    <div style="font-family: 'Alice', serif;"><%= v.getLetra() %></div> 
            </div>
            <div class="propertyVideo">
                <div class="video-container">
                    <%= v.getUrl() %>
                </div>    
            </div>
        </div>
        <% } %>
        <ul>
           <!-- edicion del boton -->
            <li style="margin-bottom: 10px;"><a href="agregarVideo.jsp">Regresar</a></li>
        </ul>
    </div>
</body>
</html>