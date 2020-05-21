using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Telcel.R9.Estructura.Negocio
{
    public class Empleado
    {
        public int EmpleadoID { get; set; }
        public string Nombre { get; set; }        
        public int PuestoID { get; set; }
        public string Descripcion { get; set; }
        public int DepartamentoID { get; set; }
        public string DescripcionDepartamento { get; set; }
    }
}
