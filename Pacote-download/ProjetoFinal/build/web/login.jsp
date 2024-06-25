<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="CSS/logincss.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN</title>
    </head>
    <body>
        <header>
            <img src="IMG/logo-branco-senai.png" alt="LOGO" class="logo-container logo"/>
        </header>
        <div class="login-container">
            <form action="USUARIO_EXE/validar.jsp" method="post">
                <label for="email">EMAIL</label>
                <input type="text" id="email" name="email" required/>
                <label for="senha">SENHA</label>
                <input type="password" id="senha" name="senha" required/>
                <input type="submit" value="LOGIN"/>
                <p><a href="#">Esqueci a senha</a></p>
            </form>
        </div>
        <footer id="inicio">
            <p>&COPY; CURSO JAVA 2023</p>
        </footer>
    </body>
</html>
