using System.Data;
using System.Data.SqlClient;

namespace Telcel.R9.Estructura.AccesoDatos
{
    public class DBConexion
    {
        private static string Conn = @"Data Source=.;Initial Catalog=Estructura;Integrated Security=True";

        public static IDbConnection Conexion()
        {
            return new SqlConnection(Conn);
        }

        public static IDbCommand ObtenerComando(string pComando, IDbConnection pCnn)
        {
            return new SqlCommand(pComando, pCnn as SqlConnection);
        }
    }
}
