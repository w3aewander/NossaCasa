using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SQLite;

namespace WSqliteConexao
{
    public class Conexao: IDisposable
    {
        private string StringConexao;
        private static SQLiteConnection _conexao = null;

        public Conexao()
        {

            StringConexao =  System.Configuration.ConfigurationManager.ConnectionStrings["RestauranteDB"].ToString();
            _conexao = new SQLiteConnection(StringConexao);
            _conexao.Open();
        }
        
        public void ExecNonQuery(string sql)
        {
            SQLiteCommand comando = new SQLiteCommand(_conexao);
            comando.CommandText = sql;
            comando.ExecuteNonQuery();
        }

        public SQLiteDataReader ExecQuery(string sql)
        {
            SQLiteCommand comando = new SQLiteCommand(_conexao);
            comando.CommandText = sql;
            return comando.ExecuteReader();
        }

        public void Dispose()
        {
            if ( _conexao.State == System.Data.ConnectionState.Open)
            {
                _conexao.Close();
            }
        }
    }
}
