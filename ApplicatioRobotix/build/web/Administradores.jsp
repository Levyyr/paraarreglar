<%@page import="java.util.List"%>
<%@page import="app.app.Datos"%>
<%@page import="app.app.Negocio"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Administradores</title>
        <link rel ="stylesheet" href="Styleindex.css">
        </head>
    <body>
        <div class="containerPrincipalAdm">
            <a href="AltasComputadoras.jsp"><button class="botonA">Altas</button></a>
             <%
            int i = 0;
            List<Datos> lista = null;
            String id = null;
            String borrar = null;
            session = request.getSession( true );
            
            if( session != null )
            {
                if( session.getAttribute("lista") != null )
                {
                    lista = (List)session.getAttribute( "lista" );
                }
            }
            id = request.getParameter( "id" );
            borrar = request.getParameter( "borrar" );
            if( "Submit".equals( borrar ) )
            {
                lista.remove( Integer.parseInt(id) );
            }
        %>
        <table border="1">
            <thead>
            <tr>
                <th>Numero de computadora</th>
                <th>Laboratorio</th>
                <th>Horario de Registro</th>
                <th>Registrado por</th>
                <th>Acciones</th>
            </tr>
            <thead>
            <%
              if( lista != null && !lista.isEmpty() )
              {
                for( Datos datos : lista)
                {
            %>
            
            <tbody>
            <tr>
                <td><%=datos.getNumeroPC()%></td>
                <td><%=datos.getLab()%></td>
                <td><%=datos.getHora( )%></td>
                <td><%=datos.getAlumno()%></td>
                <td>
                    <a href="Administradores.jsp?id=<%=i%>&borrar=Submit">Borrar</a> 
                    <a href="AltasComputadoras.jsp?id=<%=i++%>&editar=Submit">Editar</a> 
                </td>
            </tr>
            </tbody>
            <%
                }
              }
            %>
        </table>
        </div>
    </body>
</html>
