<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.UsuarioDAO"%>
<%
    try{
        UsuarioDAO usudao = new UsuarioDAO();
        usudao.excluirUsuario(Integer.parseInt(request.getParameter("id")));
    }catch(Exception erro){
        throw new RuntimeException("Erro ao excluir usuário"+erro.getMessage());
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <link href="../CSS/estilo.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sucesso</title>
    </head>
    <body>
        <div class="success-message">
            <h1>USUÁRIO EXCLUIDO COM SUCESSO!</h1>        
        </div>
        <p id="p-success"><a href="../cadastro_usuario.jsp">Novo Usuário</a> ou
            <a href="../consultar_usuario.jsp">Consultar Usuário</a>
        </p>
    </body>
</html>
