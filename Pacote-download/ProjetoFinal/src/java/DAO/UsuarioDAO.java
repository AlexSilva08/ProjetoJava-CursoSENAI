package DAO;
import MODEL.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement; // Responsável pelos comandos SQL, com parâmentro
import java.sql.Statement; // Responsável pelos comandos SQL, sem parâmetro.
import java.util.ArrayList; // Exibe os dados do banco de dados
import java.sql.ResultSet; // Responsável por pegar as informações na base de dados.

public class UsuarioDAO {  
    //Responsável pela conexão
    private Connection conn;
    //Responsável pelos comandos SQL com parâmetros
    private PreparedStatement stmt;
    // Responsável pelos comandos SQL, sem parâmetro.
    private Statement st;
    // Responsável por pegar as informações na base de dados.
    private ResultSet rs;
    // Exibe os dados do banco de dados
    private ArrayList<Usuario> lista = new ArrayList<>();
    
    //Metodo para abrir conexão
    public UsuarioDAO(){
        conn = new Conexao().getConexao();
    }
    
    //Metodo Inserir Usuários
    public void inserirUsuario(Usuario usuario){
        try{
            //variavel para receber um comando SQL com parâmetros
            String sql = "INSERT INTO tb_usuario(nome,email,senha)VALUES(?,?,?)";
            //Passando para o prepareStatement qual comando SQL deve executar e em
            //qual conexão
            stmt = conn.prepareStatement(sql);
            //Passando os valores parametrizados
            stmt.setString(1, usuario.getNome());
            stmt.setString(2, usuario.getEmail());
            stmt.setString(3, usuario.getSenha());
            //executando a query(comando dentro do banco de dados)
            stmt.execute();
            //Fechando a conexão com o banco
            stmt.close();
        }catch(Exception erro){
            throw new RuntimeException("Erro no metodo inserir usuário: "+erro.getMessage());
        }
    }
    
    //Metodo buscar todos os usuários
    public ArrayList<Usuario> listarTodosUsuarios(){
        try{            
            String sql = "SELECT * FROM tb_usuario";
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while(rs.next()){
                Usuario usuario = new Usuario();
                usuario.setId(rs.getInt("id"));
                usuario.setNome(rs.getString("nome"));
                usuario.setEmail(rs.getString("email"));
                usuario.setSenha(rs.getString("senha"));
                lista.add(usuario);
            }
        }catch(Exception erro){
            throw new RuntimeException("Erro metodo listarTodosUsuarios"+erro.getMessage());
        }
        return lista;
    }    
    
    //Metodo buscar usuário por Nome ou Email
    public ArrayList<Usuario> listarPorNomeUsuario(String valor){
        try{
            String sql = "SELECT * FROM tb_usuario WHERE nome like '%"+valor+"%'"
                    + "or email like '%"+valor+"%'";
            st = conn.createStatement();
            rs = st.executeQuery(sql);
            while(rs.next()){
                Usuario usuario = new Usuario();
                usuario.setId(rs.getInt("id"));
                usuario.setNome(rs.getString("nome"));
                usuario.setEmail(rs.getString("email"));
                usuario.setSenha(rs.getString("senha"));
                lista.add(usuario);
            }
        }catch(Exception erro){
            throw new RuntimeException("Erro metodo listarPorNomeUsuario"+erro.getMessage());
        }    
        return lista;
    }
    
    //Metodo de atualização
    public void atualizarUsuario(Usuario usuario){
        try{
            String sql = "UPDATE tb_usuario SET nome=?, email=? WHERE id=?";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, usuario.getNome());
            stmt.setString(2, usuario.getEmail());
            stmt.setInt(3, usuario.getId());
            stmt.execute();
            stmt.close();
        }catch(Exception erro){
            throw new RuntimeException("Erro metodo atualizarUsuario"+erro.getMessage());
        }
    }
    
    //Metodo excluir
    public void excluirUsuario(int valor){
        try{
            String sql = "DELETE FROM tb_usuario WHERE id = " + valor;
            st = conn.createStatement();
            st.execute(sql);
            st.close();
        }catch(Exception erro){
            throw new RuntimeException("Erro metodo excluirUsuario"+erro.getMessage());
        }
    }
    
    public ResultSet validarUsuario(Usuario usuario){
        try{
            String sql = "SELECT * FROM tb_usuario WHERE email = ? and senha=?";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, usuario.getEmail());
            stmt.setString(2, usuario.getSenha());
            rs = stmt.executeQuery();
            return rs;
        }catch(Exception erro){
            throw new RuntimeException("Erro metodo validarUsuario"+erro.getMessage());
        }
    }
}
