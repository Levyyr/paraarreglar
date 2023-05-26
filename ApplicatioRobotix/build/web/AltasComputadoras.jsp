<%@page import="app.app.Datos"%>
<%@page import="app.app.Negocio"%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel ="stylesheet" href="StyleALCO.css">
    </head>
    <body>
        
        
        
        <div class ="containerPrincipalPC">
        <%
            String NumeroPC = null;
            String Lab = null;
            String Hora = null;
            String Alumno = null;
            String guardar = null;
            String id = null;
            String editar = null;
            String accion = "guardar";
            String actualizar = "guardar";
            Datos datos = null;
            Integer idx = null;
            List<Datos>lista = null;
            
            session = request.getSession( true );
            if( session != null )
            {
                if( session.getAttribute("lista") == null )
                {
                    session.setAttribute("lista", new ArrayList<Datos>());
                }
                lista = (List)session.getAttribute("lista");
            }
            NumeroPC = request.getParameter( "NumeroPC" );
            Lab = request.getParameter( "Lab" );
            Hora = request.getParameter( "Hora" );
            Alumno = request.getParameter( "Alumno" );
            guardar = request.getParameter( "guardar" );
            id = request.getParameter( "id" );
            editar = request.getParameter( "editar" );
            actualizar = request.getParameter( "actualizar" );
            
            if( "Submit".equals( editar ) )
            {
                idx = Integer.parseInt( id );
                if( idx < lista.size() )
                {
                    datos = lista.get( idx );
                }
                accion = "actualizar";
            }
            
            if( "Submit".equals( guardar ) || "Submit".equals( actualizar ) )
            {
                if( "Submit".equals( guardar ) )
                {
                    datos = new Datos( );
                }
                else
                {
                    datos = lista.get( Integer.parseInt( id ) );
                }
                datos.setNumeroPC(Integer.parseInt(NumeroPC));
                datos.setLab(Lab);
                datos.setHora(Integer.parseInt(Hora));
                datos.setAlumno(Alumno);
                if( "Submit".equals( guardar ) )
                {
                    lista.add( datos );
                }
        %>
                <script>
                    console.log("Exito");
                </script>
                <a href="SesiónAdministradores.jsp"><button class="botonA">Ir a Admins</button></a>
                <a href="SesiónMaestro.jsp"><button class="botonA">Ir a Maestros</button></a>
                <a href="SesiónAlumno.jsp"><button class="botonA">Ir a Alumnos</button></a>
        <%
            }
            if( datos == null )
            {
                datos = new Datos( );
                datos.setNumeroPC(0);
                datos.setLab("");
                datos.setHora(0);
                datos.setAlumno("");
            }
            if( !"Submit".equals( guardar ) && !"Submit".equals( actualizar ) )
            {
        %>  
        <form id="form1">
            <table border="1">
                <thead>
                    <tr>
                        <th>NumeroPC</th>
                        <th>Lab</th>
                        <th>Hora</th>
                        <th>Alumno</th>  
                    </tr> 
                </thead>
                <tbody>
                    <tr>
                        <td><input id="NumeroPC" name="NumeroPC" value="<%=datos.getNumeroPC()%>" type="number"/></td> 
                        <td><input id="Lab" name="Lab" value="<%=datos.getLab()%>" type="text"/></td>
                        <td><input id="Hora" name="Hora" value="<%=datos.getHora()%>" type="number"></td>
                        <td><input id ="Alumno" name="Alumno" value="<%=datos.getAlumno()%>" type="text">
                             <%
                            if( "Submit".equals( editar ) )
                            {
                        %>
                                <input type="hidden" name="id" id="id" value="<%=id%>" />
                        <%
                            }
                        %>
                        </td>
                    </tr>
                    <tr>
                    <td colspan="4">
                       <input type="submit" id="Guardar" name="<%=accion%>"/>
                    </td>
                    </tr>
                </tbody>
            </table>
        </form>
        <%
            }
        %>
        </div>
    </body>
</html>