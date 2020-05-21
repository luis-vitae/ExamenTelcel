<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Empleados.aspx.cs" Inherits="Telcel.R9.Estructura.Presentacion.Empleados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Listado de empleados</h1>
    <p>
        <asp:DropDownList ID="cboPuesto" runat="server" CssClass="form-control">
            <asp:ListItem Value="Descripcion"></asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="cboDepartamento" runat="server" CssClass="form-control">
            
        </asp:DropDownList>
    </p>
    
    <asp:TextBox ID="TbBuscar" runat="server" MaxLength="15" CssClass="form-control"  ></asp:TextBox>
    <asp:Button ID="BtnBucar" runat="server" Text="Buscar" CssClass="btn btn-primary" OnClick="BtnBucar_Click1" />
    
    <br />
    <br />
    <asp:GridView ID="GvEmpleados" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="EmpleadoID" ForeColor="#333333" GridLines="None" PageSize="30" OnRowCommand="GvEmpleados_RowCommand">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="EmpleadoID" Visible="False" />
            <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
            <asp:BoundField DataField="Descripcion" HeaderText="Puesto" />
            <asp:BoundField DataField="DescripcionDepartamento" HeaderText="Departamento" />
            <asp:ButtonField ButtonType="Button" CommandName="del" Text="Eliminar">
            <ControlStyle CssClass="btn btn-danger btn-sm" />
            </asp:ButtonField>
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
</asp:Content>
