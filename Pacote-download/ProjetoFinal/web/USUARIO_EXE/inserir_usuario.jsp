<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Usuario, DAO.UsuarioDAO"%>
<%
    String nome;
    String email;
    String senha;
    try{
        //Instancia da Model Usuario -> Get e Set
        Usuario usuario = new Usuario();
        //Instancia da Usuario DAO onde está nosso metodo inserir
        UsuarioDAO usuDAO = new UsuarioDAO();
        // Pegando as informações enviadas via POST da página cadastro_usuario
        // e jogando para dentro das variáveis.
        nome = request.getParameter("nome");
        email = request.getParameter("email");
        senha = request.getParameter("senha");
        //jogar o valor das variaveis para os metodos da MODEL
        usuario.setNome(nome);
        usuario.setEmail(email);
        usuario.setSenha(senha);
        //Executar o metodo de inserção de dados
        usuDAO.inserirUsuario(usuario);
        
    }catch(Exception erro){
        throw new RuntimeException("Erro ao tentar cadastrar usuário: "+erro.getMessage());
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
            <h1>CADASTRO EFETUADO COM SUCESSO!</h1>        
        </div>
        <p id="p-success"><a href="../cadastro_usuario.jsp">Novo Usuário</a> ou
            <a href="../consultar_usuario.jsp">Consultar Usuário</a>
        </p>
    </body>
</html>
