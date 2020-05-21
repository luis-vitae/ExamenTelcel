using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telcel.R9.Estructura.AccesoDatos;

namespace Telcel.R9.Estructura.Presentacion
{
    public partial class Empleados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FillGvEmpleados();
            FillGVPuesto();
            FillDepartamentos();
        }
        void FillGvEmpleados()
        {
            Empleado empleado = new Empleado();
            var dts = empleado.MostrarEmpleado();

            GvEmpleados.DataSource = dts.OrderBy(e => e.EmpleadoID).ToList();
            GvEmpleados.DataBind();
        }

        void FillGVPuesto()
        {
            Puesto puesto = new Puesto();
            var dts = puesto.MostrarPuesto();
            cboPuesto.DataSource = dts;
            cboPuesto.DataTextField = "Descripcion";
            cboPuesto.DataBind();

        }

        void FillDepartamentos()
        {
            Departamento departamento = new Departamento();
            var dts = departamento.departamentos();
            cboDepartamento.DataSource = dts;
            cboDepartamento.DataTextField = "Descripcion";
            cboDepartamento.DataBind();
        }

        protected void BtnBucar_Click1(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(TbBuscar.Text))
                FillGvEmpleados();
            else
            {
                Empleado empleado = new Empleado();
                var dts = empleado.BuscarEmpleado(TbBuscar.Text.ToString());
                GvEmpleados.DataSource = dts;
                GvEmpleados.DataBind();
            }
        }

        protected void GvEmpleados_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "del")
            {
                var fila = Convert.ToInt32(e.CommandArgument);
                var valor = Convert.ToInt32(GvEmpleados.DataKeys[fila].Value);
                Empleado empleado = new Empleado();
                empleado.ElimnarEmpleado(valor);
                MessageBox.ShowMessage("El campo a sido eliminado", Page);
                FillGvEmpleados();
            }
        }
    }
}