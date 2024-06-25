<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="CSS/estilo.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CADASTRO USUÁRIO</title>
    </head>
    <body>
        <%@include file="sessao.jsp"%>
        <%@include file="topo.jsp"%>
        <h1>CADASTRO USUÁRIO</h1>
        <form action="USUARIO_EXE/inserir_usuario.jsp" method="POST">
            <label for="nome">NOME</label><br>
            <input type="text" id="nome" name="nome" required/><br>
            <label for="email">EMAIL</label><br>
            <input type="email" id="email" name="email" required/><br>
            <label for="senha">SENHA</label><br>
            <input type="password" id="senha" name="senha" required/><br><br>
            <input type="submit" value="CADASTRAR"/>
        </form>
        <footer>
            <p>&copy; CURSO JAVA 2023 - BY PEDROSO</p>
        </footer>
    </body>
</html>
