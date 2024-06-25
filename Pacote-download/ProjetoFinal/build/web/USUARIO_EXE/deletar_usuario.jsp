<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="../CSS/estilo.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EXCLUSÃO DO USUÁRIO?</title>
    </head>
    <body>
        <header>
            <img src="../IMG/logo-branco-senai.png" alt="alt" class="logo-container logo"/>
            <h1 id="index">SISTEMA DE USUÁRIOS</h1>
        </header>
        <nav>
            <ul>
                <li><a href="../cadastro_usuario.jsp">Novo Usuario</a></li>
                <li><a href="../consultar_usuario.jsp">Consultar Usuario</a></li>
            </ul>
        </nav>
        <h1>CONFIRMA EXCLUSÃO DO USUÁRIO?</h1>
        <form action="executar_excluir_usuario.jsp" method="POST">
            <label for="id">ID</label><br>
            <input type="text" id="id" name="id" value="<%=request.getParameter("id")%>" readonly/><br>
            <label for="nome">NOME</label><br>
            <input type="text" id="nome" name="nome" value="<%=request.getParameter("nome")%>" readonly/><br><br>
            <input type="submit" value="DELETAR"/>
        </form>
        <footer>
            <p>&copy; CURSO JAVA 2023 - BY PEDROSO</p>
        </footer> 
    </body>
</html>
