using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Telcel.R9.Estructura.Negocio;

namespace Telcel.R9.Estructura.AccesoDatos
{
    public class Departamento
    {
        public List<Negocio.Departamento> departamentos()
        {
            IDbConnection _conn = DBConexion.Conexion();
            _conn.Open();
            SqlCommand _Command = new SqlCommand("List_Departamento", _conn as SqlConnection);
            _Command.CommandType = CommandType.StoredProcedure;
            IDataReader _reader = _Command.ExecuteReader();
            List<Negocio.Departamento> Lista = new List<Negocio.Departamento>();
            while (_reader.Read())
            {
                Negocio.Departamento empleado = new Negocio.Departamento();
                empleado.Descripcion = _reader.GetString(1);
                empleado.DepartamentoID = _reader.GetInt32(0);
                Lista.Add(empleado);
            }
            _conn.Close();
            return Lista;
        }
    }
}
