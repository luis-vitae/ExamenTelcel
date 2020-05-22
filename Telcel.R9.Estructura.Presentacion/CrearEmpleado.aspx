<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CrearEmpleado.aspx.cs" Inherits="Telcel.R9.Estructura.Presentacion.CrearEmpleado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Crear empleado</h1>
    <hr />
    <div class="form-horizontal">
        <div class="form-group">
            <label class="control-label col-md-2" >Nombre de empleado</label>
             <div class="col-md-10">
                 <asp:TextBox ID="tbNombre" runat="server" CssClass="form-control"></asp:TextBox>
&nbsp;</div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-2" >Puesto</label>
             <div class="col-md-10">
                 <asp:DropDownList ID="cboPuesto" runat="server">
                 </asp:DropDownList>
             </div>
        </div>
        <div class="form-group">
            <label class="control-label col-md-2" >Departamento</label>
             <div class="col-md-10">
                <asp:DropDownList ID="cboDepartamento" runat="server" CssClass="form-control"> </asp:DropDownList>
             </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button ID="btnCrear" runat="server" CssClass="btn btn-primary" OnClick="btnCrear_Click" Text="Crear" />
&nbsp;|
                <a href="Empleados.aspx" class="btn btn-danger">Regresar</a>
            </div>
        </div>
    </div>
</asp:Content>
