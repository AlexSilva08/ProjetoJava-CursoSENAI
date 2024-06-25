<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="../CSS/estilo.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EDITAR USUÁRIO</title>
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
        <h1>EDITAR USUÁRIO</h1>
        <form action="executar_alterar_usuario.jsp" method="POST">
            <label for="id">ID</label><br>
            <input type="text" id="id" name="id" value="<%=request.getParameter("id")%>" readonly/><br>
            <label for="nome">NOME</label><br>
            <input type="text" id="nome" name="nome" value="<%=request.getParameter("nome")%>" required/><br>
            <label for="email">EMAIL</label><br>
            <input type="email" id="email" name="email" value="<%=request.getParameter("email")%>" required/><br><br>
            <input type="submit" value="ATUALIZAR"/>
        </form>
        <footer>
            <p>&copy; CURSO JAVA 2023 - BY PEDROSO</p>
        </footer>    
    </body>
</html>
