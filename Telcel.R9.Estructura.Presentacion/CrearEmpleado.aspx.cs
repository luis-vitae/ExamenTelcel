using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telcel.R9.Estructura.AccesoDatos;

namespace Telcel.R9.Estructura.Presentacion
{
    public partial class CrearEmpleado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            FillGVPuesto();
            FillDepartamentos();
        }
        void FillGVPuesto()
        {
            Puesto puesto = new Puesto();
            var dts = puesto.MostrarPuesto();
            cboPuesto.DataSource = dts;
            cboPuesto.DataValueField = "PuestoID";
            cboPuesto.DataTextField = "Descripcion";
            cboPuesto.DataBind();
        }
        void FillDepartamentos()
        {
            Departamento departamento = new Departamento();
            var dts = departamento.departamentos();
            cboDepartamento.DataSource = dts;
            cboDepartamento.DataTextField = "Descripcion";
            cboDepartamento.DataValueField = "DepartamentoID";
            cboDepartamento.DataBind();
        }

        protected void btnCrear_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(tbNombre.Text))
            {
                MessageBox.ShowMessage("El campo nombre no puede estar vacio", Page);
                return;
            }
            var empleado = new Negocio.Empleado();
            empleado.Nombre = tbNombre.Text;
            empleado.PuestoID = Convert.ToInt32(cboPuesto.SelectedValue);
            empleado.DepartamentoID = Convert.ToInt32(cboDepartamento.SelectedValue);
            var empleadoCreate = new Empleado();
            var valida = empleadoCreate.CrearEmpleado(empleado);
            if (valida)
            {
                MessageBox.ShowMessage("El registro se creo con exito", Page);
                Response.Redirect("Empleados.aspx");
            }
            else
                MessageBox.ShowMessage("Ocurrio un error", Page);
        }
    }
}