<%@ Page Title="" Language="C#" MasterPageFile="~/Template/PrincipClien.master" AutoEventWireup="true" CodeFile="ProVerduras.aspx.cs" Inherits="webformsADM_ProVerduras" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div class="container body-content">
       <h2>Productos</h2>
       <br />
       <br />
            <asp:datalist ID="Productos" runat="server" RepeatColumns="4" DataSourceID="odsProducto">
                <ItemTemplate>
                    <asp:Label ID="ID_PRODUCTOLabel" runat="server" Text='<%# Eval("ID_PRODUCTO") %>' />
                    <br />
                    <b>Nombre del Producto:</b>
                    <asp:Label ID="NOMBRE_PRODUCTOLabel" runat="server" Text='<%# Eval("NOMBRE_PRODUCTO") %>' />
                    <br />
                    <b>Descripción del producto:</b>
                    <asp:Label ID="DESCRIPCION_PRODUCTOLabel" runat="server" Text='<%# Eval("DESCRIPCION_PRODUCTO") %>' />
                    <br />
                    <asp:Image height="220" width="200"  ID="IMGLabel" ImageUrl='<%#"~/img/"+Eval("IMG") %>' runat="server" />   
                    <br />
                    <br />
                    <b>Precio:</b>
                    <asp:Label ID="PRECIOLabel" runat="server" Text='<%# Eval("PRECIO") %>' />
                    <br />
                    <br />
                    <asp:TextBox ID="txtCantidad" Height="32px" Width="944px" CssClass="form-control" runat="server" placeholder="Digite la cantidad" TextMode="Number"></asp:TextBox>
                    <br>
                    <br />
                    <asp:LinkButton  ID="btnAgregar" OnClick="btnAgregar_Click" CssClass="btn btn-primary"   runat="server">Agregar al carro</asp:LinkButton>
                    <br />
                    <br />
                    <br />
                </ItemTemplate>
            </asp:datalist>
            <asp:ObjectDataSource ID="odsProducto" runat="server" SelectMethod="Mostarproducto" TypeName="PRODUCTOS_BLL" OldValuesParameterFormatString="original_{0}"></asp:ObjectDataSource>
</div> 
   
</asp:Content>

