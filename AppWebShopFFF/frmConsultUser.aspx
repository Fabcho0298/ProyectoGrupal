<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmConsultUser.aspx.cs" Inherits="AppWebShopFFF.frmConsultUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="descripcion">
        <article class="article descripcion__article">
            <h3 class="descripcion__title">Consultar usuarios</h3>
            <p class="descripcion__info">En esta sección, se podrá consultar, por medio del nombre completo, la información de los usuarios registrados gracias a la plataforma web.
            </p>
        </article>
    </section>

    <section class="consult">
        <article class="article consult__article text-center">
            <div class="consult__div">
                <asp:Label  class="consult__label" Text="Nombre completo:" runat="server" />
                <asp:TextBox class="consult__textbox" runat="server" />
                <span class="consul__span fa fa-search"></span>
            </div>
            <asp:GridView class="consult__gridview" runat="server"
                AutoGenerateColumns="false"
                CssClass="table table-responsive-lg"
                DataKeyNames="codigo"
                ID="dtgData"
                DataSourceID="sqlDatos">
       

                <Columns>
                    <asp:HyperLinkField DataNavigateUrlFields="codigo"
                        HeaderStyle-CssClass="bg-secondary TextoContenido"
                        DataNavigateUrlFormatString="frmRegisterProduct.aspx?codigo={0}"
                        DataTextField="codigo" HeaderText="N. de identification"/>
                   <asp:BoundField DataField="nombre" 
                        HeaderText="Correo electrónico"
                        HeaderStyle-CssClass="bg-secondary  TextoContenido"  />
                  <asp:BoundField DataField="marca" HeaderText="Nombre completo"
                        HeaderStyle-CssClass="bg-secondary  TextoContenido"  />
                  <asp:BoundField DataField="cantidad" HeaderText="Teléfono"
                        HeaderStyle-CssClass="bg-secondary  TextoContenido"  />
                  <asp:BoundField DataField="tipoArticulo" HeaderText="Direc. de domicilio"
                        HeaderStyle-CssClass="bg-secondary TextoContenido"  />
                  <asp:BoundField DataField="estado" HeaderText="Estado"
                        HeaderStyle-CssClass="bg-secondary  TextoContenido" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="sqlDatos" runat="server" ConnectionString='<%$ ConnectionStrings:DbFFFConnectionString %>' 
                SelectCommand="SELECT [codigo], [nombre], [cantidad], [marca], [tipoArticulo], [estado] FROM [TblArticulo]" />
      </article>
     </section>
</asp:Content>
