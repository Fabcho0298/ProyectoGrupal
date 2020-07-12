<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmConsultProduct.aspx.cs" Inherits="AppWebShopFFF.frmConsultProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="descripcion">
        <article class="article descripcion__article">
            <h3 class="descripcion__title">Consultar artículos musicales</h3>
            <p class="descripcion__info">En esta sección, se podrá consultar, mediante el nombre en específico, la información de los artículos musicales (instrumentos o accesorios) que se encuentran en la tienda.
            </p>
        </article>
    </section>

    <section class="consult">
        <article class="article consult__article text-center">
            <div class="consult__div">
                <asp:Label  class="consult__label" Text="Nombre del artículo musical:" runat="server" />
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
                        DataTextField="codigo" HeaderText="Code"/>
                   <asp:BoundField DataField="nombre" 
                        HeaderText="Article Name"
                        HeaderStyle-CssClass="bg-secondary  TextoContenido"  />
                  <asp:BoundField DataField="marca" HeaderText="Brand"
                        HeaderStyle-CssClass="bg-secondary  TextoContenido"  />
                  <asp:BoundField DataField="cantidad" HeaderText="Cuantity"
                        HeaderStyle-CssClass="bg-secondary  TextoContenido"  />
                  <asp:BoundField DataField="tipoArticulo" HeaderText="Type"
                        HeaderStyle-CssClass="bg-secondary TextoContenido"  />
                  <asp:BoundField DataField="estado" HeaderText="State"
                        HeaderStyle-CssClass="bg-secondary  TextoContenido" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="sqlDatos" runat="server" ConnectionString='<%$ ConnectionStrings:DbFFFConnectionString %>' 
                SelectCommand="SELECT [codigo], [nombre], [cantidad], [marca], [tipoArticulo], [estado] FROM [TblArticulo]" />
      </article>
     </section>

</asp:Content>
