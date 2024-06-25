package DAO;
import java.sql.Connection; //-> Biblioteca de conexao Connection
import java.sql.DriverManager; //->Biblioteca de gerenciamento de drivers BD
public class Conexao {
    //Metodo de conexão
    public Connection getConexao(){
        try{
            //Nome da classe jdbc para conexão (Padrão, pegar na documentação)
            Class.forName("com.mysql.jdbc.Driver");
            //Junto do DriverManager, realiza a conexão com o banco de dados
            //através de 3 parâmetros -> caminho do banco(URL), Usuario e Senha
            return DriverManager.getConnection("jdbc:mysql://localhost/projeto_final"
                    ,"root","");
        }catch(Exception erro){
            throw new RuntimeException("Erro ao conectar: "+erro.getMessage());            
        }
    }
}
