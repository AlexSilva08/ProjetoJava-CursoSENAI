<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet, DAO.UsuarioDAO, MODEL.Usuario"%>
<%
    try{
        Usuario usuario = new Usuario();
        UsuarioDAO usudao = new UsuarioDAO();
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");
        usuario.setEmail(email);
        usuario.setSenha(senha);
        ResultSet rs = usudao.validarUsuario(usuario);
        if(rs.next()){            
            out.print("<h1 style='color:green;'>Login efetuado com sucesso!</h1>"); 
            out.print("<meta http-equiv='refresh' content='3, url=../index.jsp'>");
            session.setAttribute("email",email);
        }else{
            out.print("<h1 style='color:red;'>Email ou Senha incorretos!</h1>");
            out.print("<meta http-equiv='refresh' content='3, url=../login.jsp'>");
        }
    }catch(Exception erro){
        throw new RuntimeException("Erro validar Usuario"+erro.getMessage());
    }
%>
