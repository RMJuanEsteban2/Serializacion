<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MusicApp</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Bungee&family=Chakra+Petch:wght@300&family=Kaushan+Script&family=Khand:wght@500&family=Oswald:wght@700&family=Sedgwick+Ave+Display&family=Ultra&display=swap');
        body {
            font-family: 'Chakra Petch', sans-serif;
            background-image: url('https://img.freepik.com/free-vector/gradient-geometric-design-dark-background_23-2148425667.jpg?w=740&t=st=1693801221~exp=1693801821~hmac=34c0d6080982f1fd03cb3717bba67db5629de183cb63a96a04c3ec317a0d4093');
            background-size: 100% 250%;
            background-repeat: no-repeat;
            color: #ffffff;
            background-size: cover;
            background-position: center;
            text-align: center;
        }

        h1 {
            font-size: 36px;
            margin-top: 20px; /* Espacio superior al título */
        }

        form {
            /* Fondo semi-transparente */
            background-color: rgba(0, 0, 0, 0.4); 
            padding: 30px;
            /* Bordes redondeados */
            border-radius: 10px; 
             /* Espacio superior al formulario */
            margin-top: 20px;
           /* Ancho máximo del formulario */
            max-width: 400px; 
           /* Centra el formulario horizontalmente */
            margin: 0 auto; 
            
        }

        label 
        {
            /* Coloca cada etiqueta en una línea separada */            
            display: block; 
            color: #ffffff;
            /* Espacio inferior entre etiquetas */
            margin-bottom: 5px;
           /* Agrega espacio superior para separar las etiquetas del contenido superior */
            margin-top: 5px; 

        }

        input[type="text"],
        textarea {
            width: 100%;
            padding: 10px;
            margin: 10px;
            /* Borde de color gris */           
            border: 2px solid #dddbef; 
            border-radius: 5px;
          /* Incluye el relleno en el ancho total */
            box-sizing: border-box; 
           /* Cambia el color de fondo a gris claro */
            background-color: #7c78ba; 
           
        }

        input[type="submit"],
        a{
            background-color: #8673a1;
            color: #ffffff;
            border: none;
            padding: 10px 20px;
            border-radius: 20px;
            cursor: pointer;
             /* Borde de color gris */
            border: 2px solid #dddbef;
            margin-top: 10px;
             /* Quita la decoración del enlace */
            text-decoration: none;
           /* Hace que el enlace se comporte como un bloque */
            display: inline-block; 
           /* Transición suave del color de fondo al pasar el mouse */
            transition: background-color 0.3s; 

            
        }
        /* Estilo al pasar el mouse por encima */
        input[type="submit"]:hover,
            a:hover {
             background-color: #9a95da;
        }
       
        input[type="submit"]:hover {
            background-color: #9a95da;
        }

        a {
            display: block;
            color: #ffffff;
             /* Espacio superior al enlace */
            margin-top: 20px;
            text-decoration: none;
        }
        /* Estilo general del select */
        select {
           /* Ajusta el espaciado interior */
            padding: 10px; 
           /* Ajusta el tamaño de fuente */
            font-size: 16px; 
            /* Agrega un borde */
            border: 2px solid #ccc;
           /* Borde redondeado */
            border-radius: 5px; 
           /* Color de fondo */
            background-color: #9a95da; 
            /* Color del texto */
            color: #ffffff;
        }

        /* Estilo cuando el select está enfocado */
        select:focus
        {
           /* Cambia el color del borde cuando está enfocado */
            border-color: #ffffff; 
           /* Agrega una sombra cuando está enfocado */
            box-shadow: 0 0 5px rgba(0, 123, 255, 0.5); 
        }

        /* Estilo para las opciones del select */
        select option 
        {
         /* Color de fondo de las opciones */
            background-color: #9a95da; 
         /* Color del texto de las opciones */
            color: #ffffff; 
        }

        /* Estilo para las opciones cuando se pasa el mouse por encima */
        select option:hover 
        {
             /* Cambia el color de fondo al pasar el mouse */
            background-color: #9a95da;
          /* Cambia el color del texto al pasar el mouse */
            color: #ffffff; 
        }

    </style>
</head>
<body>
    <h1>Video Player</h1>

    <form action="SvVideo" method="POST">
        <label for="idvideo">idVideo:</label>
        <input type="text" name="idvideo"><br>

        <label for="titulo">Titulo:</label>
        <input type="text" name="titulo"><br>

        <label for="autor">Autor:</label>
        <input type="text" name="autor"><br>

        <label for="anio">Año:</label>
        <input type="text" name="anio"><br>

        <label for="categoria">Categoria:</label>
        <select type="text" name="categoria"><br>
                <option value="Hip-Hop">Hip-Hop</option>
                <option value="Trap">Trap</option>
                <option value="Rock">Rock</option>
                <option value="Popular">Popular</option>                    
                <option value="Pop">Pop</option>
            </select>

        <label for="url">URL:</label>
        <input type="text" name="url"><br>

        <label for="letra">Letra:</label>
        <textarea id="id" name="letra" rows="5" cols="10"></textarea><br>
        
        <input style="text-align: center;"type="submit" value="Agregar Video">
        <a href="index.jsp">Regresar</a>        
    </form>
</body>
</html>