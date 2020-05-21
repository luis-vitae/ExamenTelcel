using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Telcel.R9.Estructura.AccesoDatos
{
    public class Puesto
    {
        public List<Negocio.Puesto> MostrarPuesto()
        {
            IDbConnection _conn = DBConexion.Conexion();
            _conn.Open();
            SqlCommand _Command = new SqlCommand("List_Puesto", _conn as SqlConnection);
            _Command.CommandType = CommandType.StoredProcedure;
            IDataReader _reader = _Command.ExecuteReader();
            List<Negocio.Puesto> Lista = new List<Negocio.Puesto>();
            while (_reader.Read())
            {
                Negocio.Puesto puesto = new Negocio.Puesto();
                puesto.PuestoID = _reader.GetInt32(0);
                puesto.Descripcion = _reader.GetString(1);
                Lista.Add(puesto);
            }
            _conn.Close();
            return Lista;
        }
    }
}
