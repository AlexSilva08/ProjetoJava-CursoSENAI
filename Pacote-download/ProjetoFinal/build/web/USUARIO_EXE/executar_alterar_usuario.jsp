<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.UsuarioDAO, MODEL.Usuario"%>
<%
    try{
        Usuario usuario = new Usuario();
        UsuarioDAO usudao = new UsuarioDAO();
        usuario.setNome(request.getParameter("nome"));
        usuario.setEmail(request.getParameter("email"));
        usuario.setId(Integer.parseInt(request.getParameter("id")));
        usudao.atualizarUsuario(usuario);
    }catch(Exception erro){
        throw new RuntimeException("Erro executar alterar usuario"+erro.getMessage());
    }


%>
<!DOCTYPE html>
<html>
    <head>
        <link href="../CSS/estilo.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SUCESSO</title>
    </head>
    <body>
        <div class="success-message">
            <h1>ATUALIZAÇÃO EFETUADO COM SUCESSO!</h1>        
        </div>
        <p id="p-success"><a href="../cadastro_usuario.jsp">Novo Usuário</a> ou
            <a href="../consultar_usuario.jsp">Consultar Usuário</a>
        </p>
    </body>
</html>
