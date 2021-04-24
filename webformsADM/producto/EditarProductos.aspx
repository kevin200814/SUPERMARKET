<%@ Page Title="" Language="C#" MasterPageFile="~/Template/PrincipalAdmin.master" AutoEventWireup="true" CodeFile="EditarProductos.aspx.cs" Inherits="webformsADM_producto_EditarProductos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <h2>Registrar un Nuevo Producto</h2>


            <div class="form-horizontal">
                <hr />
                 <div class="form-group">
                    ID Producto &nbsp;<asp:Image ID="Image1" runat="server" />
                    <br />
                    <div class="col-md-10">
                        
                        <asp:TextBox ID="TxtId" runat="server" placeholder="Ingrese el Nombre del producto"></asp:TextBox>
                    </div>
                </div>

                <div class="form-group">
                    Nombre
                    <div class="col-md-10">
                        
                        <asp:TextBox ID="txtNombre" runat="server" placeholder="Ingrese el Nombre del producto"></asp:TextBox>
                    </div>
                </div>

                  <div class="form-group">
                    Fecha Elaboracion
                    <div class="col-md-10">

                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px" OnSelectionChanged="Calendar1_SelectionChanged">
                            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                            <WeekendDayStyle BackColor="#CCCCFF" />
                        </asp:Calendar>

                        <asp:TextBox ID="TextCalend1" runat="server" Height="16px" Width="239px"></asp:TextBox>
                    </div>
                </div>

                    <div class="form-group">
                    Fecha Vencimiento
                    <div class="col-md-10">

                        <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px" OnSelectionChanged="Calendar2_SelectionChanged">
                            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                            <OtherMonthDayStyle ForeColor="#999999" />
                            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                            <WeekendDayStyle BackColor="#CCCCFF" />
                        </asp:Calendar>

                        <asp:TextBox ID="TextCalend2" runat="server" Height="16px" Width="239px"></asp:TextBox>
                  </div>
                </div>

                <div class="form-group">
                    Venta Producto
                    <div class="col-md-10">
                        
                        <asp:TextBox ID="TxtVent" runat="server" placeholder="Ingrese el Nombre del producto"></asp:TextBox>
                    </div>
                </div>

                 <div class="form-group">
                    Cantidad Producto
                    <div class="col-md-10">
                        
                        <asp:TextBox ID="TxtCant" runat="server" placeholder="Ingrese el Nombre del producto"></asp:TextBox>
                    </div>
                </div>

                <div class="form-group">
                    TipoProducto
                    <div class="col-md-10">
                        <div class="form-group">
                             <label for="sel1">Selecciona:</label>
                             <asp:TextBox ID="TxtTiprod" runat="server" ></asp:TextBox>

                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="odsproducto" DataTextField="TIPO_PRODUCTO" DataValueField="ID_TIPO_PRODUCTO" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>

                             <asp:ObjectDataSource ID="odsproducto" runat="server" SelectMethod="MostrarTodos" TypeName="TIPROD_BLL"></asp:ObjectDataSource>

                        </div>
                    </div>
                </div>

                <div class="form-group">
                    Sucursal Producto
                    <div class="col-md-10">
                      <label for="sel1">Selecciona:</label>  
                        <asp:TextBox ID="TxtSuc" runat="server" ></asp:TextBox>

                        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="odsSucursal" DataTextField="NOMBRE_SUCURSAL" DataValueField="ID_SUCURSAL" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"></asp:DropDownList>
                        <asp:ObjectDataSource ID="odsSucursal" runat="server" SelectMethod="MostrarTodos" TypeName="SUCURSAL_BLL"></asp:ObjectDataSource>
                    </div>
                </div>

                 <div class="form-group">
                    Precio
                    <div class="col-md-10">
                        <div class="col-md-10">
                            <asp:TextBox ID="TxtPrecio" runat="server" placeholder="$"></asp:TextBox>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    Descripcion
                    <div class="col-md-10">
                        <asp:TextBox ID="TxtDescripcion" runat="server" placeholder="Ingrese la descripcion del producto"></asp:TextBox>
                    </div>
                </div>

                  <div class="form-group">
                    Imagen
                    <div class="col-md-10">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </div>
                </div>

                   <div class="form-group">
                    <div class="col-md-offset-2 col-md-10">
                        <asp:Button ID="BtnGuardar"  OnClick="BtnGuardar_Click" CssClass="btn btn-success" runat="server" Text="Insertar" />

                        <asp:Button ID="btnActualizar"  OnClick="btnActualizar_Click" CssClass="btn btn-success" runat="server" Text="Editar" />
                    </div>
                </div>
                </div>

</asp:Content>

