using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Telcel.R9.Estructura.AccesoDatos
{
    public class Empleado
    {
        public List<Negocio.Empleado> MostrarEmpleado()
        {
            IDbConnection _conn = DBConexion.Conexion();
            _conn.Open();
            SqlCommand _Command = new SqlCommand("List_Empleados", _conn as SqlConnection);
            _Command.CommandType = CommandType.StoredProcedure;
            IDataReader _reader = _Command.ExecuteReader();
            List<Negocio.Empleado> Lista = new List<Negocio.Empleado>();
            while (_reader.Read())
            {
                Negocio.Empleado empleado = new Negocio.Empleado();
                empleado.EmpleadoID = _reader.GetInt32(0);
                empleado.Nombre = _reader.GetString(1);
                empleado.PuestoID = _reader.GetInt32(2);
                empleado.Descripcion = _reader.GetString(3);
                empleado.DepartamentoID = _reader.GetInt32(4);
                empleado.DescripcionDepartamento = _reader.GetString(5);
                Lista.Add(empleado);
            }
            _conn.Close();
            return Lista;
        }

        public List<Negocio.Empleado> BuscarEmpleado(string nombre)
        {
            IDbConnection _conn = DBConexion.Conexion();
            _conn.Open();
            SqlCommand _Command = new SqlCommand("Buscar_Empleado", _conn as SqlConnection);
            _Command.CommandType = CommandType.StoredProcedure;
            _Command.Parameters.Add(new SqlParameter("@Nombre", nombre));
            IDataReader _reader = _Command.ExecuteReader();
            List<Negocio.Empleado> Lista = new List<Negocio.Empleado>();
            Negocio.Empleado empleado = new Negocio.Empleado();
            while (_reader.Read())
            {
                empleado.EmpleadoID = _reader.GetInt32(0);
                empleado.Nombre = _reader.GetString(1);
                empleado.PuestoID = _reader.GetInt32(2);
                empleado.Descripcion = _reader.GetString(3);
                empleado.DepartamentoID = _reader.GetInt32(4);
                empleado.DescripcionDepartamento = _reader.GetString(5);
                Lista.Add(empleado);
            }
            _conn.Close();
            return Lista;
        }

        public int ElimnarEmpleado(int empleadoID)
        {
            IDbConnection _Conn = DBConexion.Conexion();
            _Conn.Open();
            SqlCommand _Command = new SqlCommand("Delete_Empleado", _Conn as SqlConnection);
            _Command.CommandType = CommandType.StoredProcedure;
            _Command.Parameters.Add(new SqlParameter("@ID", empleadoID));
            int resultado = _Command.ExecuteNonQuery();
            _Conn.Close();
            return resultado;
        }
    }
}
