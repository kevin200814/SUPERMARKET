<%@ Page Title="" Language="C#" MasterPageFile="~/Template/Principal.master" AutoEventWireup="true" CodeFile="indexPersona.aspx.cs" Inherits="Vistas_indexPersona" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="container body-content">
    <h2>Personas</h2>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="odsPersona">
        <Columns>
            <asp:BoundField DataField="ID_PERSONA" HeaderText="ID_PERSONA" SortExpression="ID_PERSONA" />
            <asp:BoundField DataField="PRIMER_NOMBRE_PERSONA" HeaderText="PRIMER_NOMBRE_PERSONA" SortExpression="PRIMER_NOMBRE_PERSONA" />
            <asp:BoundField DataField="SEGUNDO_NOMBRE_PERSONA" HeaderText="SEGUNDO_NOMBRE_PERSONA" SortExpression="SEGUNDO_NOMBRE_PERSONA" />
            <asp:BoundField DataField="PRIMER_APELLIDO_PERSONA" HeaderText="PRIMER_APELLIDO_PERSONA" SortExpression="PRIMER_APELLIDO_PERSONA" />
            <asp:BoundField DataField="SEGUNDO_APELLIDO_PERSONA" HeaderText="SEGUNDO_APELLIDO_PERSONA" SortExpression="SEGUNDO_APELLIDO_PERSONA" />
            <asp:BoundField DataField="FECHA_NACIMIENTO_PERSONA" HeaderText="FECHA_NACIMIENTO_PERSONA" SortExpression="FECHA_NACIMIENTO_PERSONA" />
            <asp:BoundField DataField="NUMERO_IDENTIDAD_PERSONA" HeaderText="NUMERO_IDENTIDAD_PERSONA" SortExpression="NUMERO_IDENTIDAD_PERSONA" />
            <asp:BoundField DataField="DIRECCION_RESIDENCIA_PERSONA" HeaderText="DIRECCION_RESIDENCIA_PERSONA" SortExpression="DIRECCION_RESIDENCIA_PERSONA" />
            <asp:BoundField DataField="ID_CIUDAD_RESIDENCIA_PERSONA" HeaderText="ID_CIUDAD_RESIDENCIA_PERSONA" SortExpression="ID_CIUDAD_RESIDENCIA_PERSONA" />
            <asp:BoundField DataField="ID_SEXO_PERSONA" HeaderText="ID_SEXO_PERSONA" SortExpression="ID_SEXO_PERSONA" />
        </Columns>
     </asp:GridView>
     <asp:ObjectDataSource ID="odsPersona" runat="server" SelectMethod="MostrarTodos" TypeName="PERSONA_BLL"></asp:ObjectDataSource>
 </div>
</asp:Content>
