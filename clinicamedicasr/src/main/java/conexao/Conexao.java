package conexao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class Conexao {
    
    public class Main {
    public static void main(String[] args) {
        // URL de conexão com o banco de dados
        String url = "jdbc:mysql://localhost:3306/clinicamedicasr";
        // Nome de usuário e senha do banco de dados
        String user = "root";
        String password = "elc@rOCC59915032nihploD00025032LQSyM6308";

        try {
            // Registrar o driver JDBC
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Estabelecer a conexão com o banco de dados
            Connection connection = DriverManager.getConnection(url, user, password);

            if (connection != null) {
                System.out.println("Conexão bem-sucedida!");
                // Aqui você pode realizar operações no banco de dados
                // Exemplo: execução de consultas SQL, atualizações, etc.

                // Não esqueça de fechar a conexão quando terminar de usá-la
                connection.close();
            }

        } catch (SQLException e) {
            System.out.println("Ocorreu um erro ao conectar ao banco de dados MySQL.");
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            System.out.println("Driver JDBC não encontrado.");
            e.printStackTrace();
        }
    }
}
    
}
