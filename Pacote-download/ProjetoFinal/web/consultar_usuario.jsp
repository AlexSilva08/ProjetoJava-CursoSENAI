<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Usuario, DAO.UsuarioDAO, java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="CSS/estilo.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="sessao.jsp"%>
        <%@include file="topo.jsp"%>
        <h1>Consultar Usuários</h1>
        <form action="USUARIO_EXE/consultar_usuario.jsp" method="post">
            <label>Pesquisar</label>
            <input type="text" name="pesquisar" placeholder="Digite NOME ou EMAIL"/>
            <input type="submit" value="PESQUISAR"/>
        </form>
        <br>
        <%
            UsuarioDAO usuario = new UsuarioDAO();  
            out.print("<table border='1'>");
            out.print("<tr>");
                out.print("<th>ID</th>");
                out.print("<th>NOME</th>");
                out.print("<th>EMAIL</th>");
                out.print("<th colspan='2'>AÇÕES</th>");               
            out.print("</tr>");
            if(request.getParameter("pesquisar") == "" || request.getParameter("pesquisar")==null){
                ArrayList<Usuario> lista = usuario.listarTodosUsuarios();    
                for(int i=0;i<lista.size();i++){
                out.print("<tr>");
                    out.print("<td>"+lista.get(i).getId()+"</td>");
                    out.print("<td>"+lista.get(i).getNome()+"</td>");
                    out.print("<td>"+lista.get(i).getEmail()+"</td>");
                    out.print("<td><a href='USUARIO_EXE/editar_usuario.jsp?"+
                    "id="+lista.get(i).getId()+
                    "&nome="+lista.get(i).getNome()+
                    "&email="+lista.get(i).getEmail()+"'>EDITAR</a></td>");
                    out.print("<td><a href='USUARIO_EXE/deletar_usuario.jsp?"+
                    "id="+lista.get(i).getId()+
                    "&nome="+lista.get(i).getNome()+"'>DELETAR</a></td>");
                out.print("</tr>");    
                }                
            }else{
                ArrayList<Usuario> lista = usuario.listarPorNomeUsuario(request.getParameter("pesquisar"));
                for(int i=0;i<lista.size();i++){
                out.print("<tr>");
                    out.print("<td>"+lista.get(i).getId()+"</td>");
                    out.print("<td>"+lista.get(i).getNome()+"</td>");
                    out.print("<td>"+lista.get(i).getEmail()+"</td>");
                    out.print("<td><a href='USUARIO_EXE/editar_usuario.jsp?"+
                    "id="+lista.get(i).getId()+
                    "&nome="+lista.get(i).getNome()+
                    "&email="+lista.get(i).getEmail()+"'>EDITAR</a></td>");
                    out.print("<td><a href='USUARIO_EXE/deletar_usuario.jsp?"+
                    "id="+lista.get(i).getId()+
                    "&nome="+lista.get(i).getNome()+"'>DELETAR</a></td>");
                out.print("</tr>");    
                }                
            }            
            out.print("</table>");
        %>     
        <p><a href="cadastro_usuario.jsp">Novo Usuario</a></p>
        <footer>
            <p>&copy; CURSO JAVA 2023 - BY PEDROSO</p>
        </footer>
    </body>
</html>
