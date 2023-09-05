package servlets;
//librerias
import com.umariana.mundo.Video;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "SvVideo", urlPatterns = {"/SvVideo"})
public class SvVideo extends HttpServlet {

    //array, va almacenar los videos agregados
    
    ArrayList <Video> misVideos = new ArrayList<>();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
         // Aqui viene los datos enviados por get
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
       // Aqui viene los datos por POST
       String idVideo = request.getParameter("idvideo");
       String titulo = request.getParameter("titulo");
       String autor = request.getParameter("autor");
       String anio = request.getParameter("anio");
       String categoria = request.getParameter("categoria");
       String url = request.getParameter("url");
       String letra = request.getParameter("letra");
       
        //Ingresar los datos al objeto        
        Video miVideo = new Video(Integer.parseInt(idVideo), titulo, autor, anio, categoria, url, letra);        
        misVideos.add(miVideo);        
        //       Agregar el arrayList completo de la solicitud como atributo
        request.setAttribute("misVideos", misVideos);        
        //Redireccionar a la pagina de "listar videos"
        request.getRequestDispatcher("listarVideos.jsp").forward(request, response);      
    }
    @Override
    public String getServletInfo() 
    {
        return "Short description";
    }
    
}
