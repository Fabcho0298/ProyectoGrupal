<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmConsultSales.aspx.cs" Inherits="AppWebShopFFF.frmConsultSales" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="descripcion">
        <article class="article descripcion__article">
            <h3 class="descripcion__title">Consultar la información de ventas</h3>
            <p class="descripcion__info">En esta sección, se podrá consultar, mediante un rango de fechas, la información de las ventas realizadas dentro de unas fechas en específico.
            </p>
        </article>
    </section>

    <section class="consult">
        <article class="article consult__article text-center">
            <div class="consult__div">
                <asp:Label  class="consult__label" Text="Fecha de inicio:" runat="server" />
                <asp:TextBox class=" consult__textbox" TextMode="Date"  runat="server" />
                <span class="consul__span fa fa-calendar "></span>
            </div>
             <div class="consult__div">
                <asp:Label  class="consult__label" Text="Fecha final:" runat="server" />
                <asp:TextBox class="consult__textbox" TextMode="Date" runat="server" />
                <span class="consul__span fa fa-calendar "></span>
            </div>
            <div class="consult__div--Button">
                 <button class="consult__button"><i class="fa fa-search "></i> Buscar</button>
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
                        DataTextField="codigo" HeaderText="Cantidad de ventas"/>
                   <asp:BoundField DataField="nombre" 
                        HeaderText="Suma de total"
                        HeaderStyle-CssClass="bg-secondary  TextoContenido"  />
                  <asp:BoundField DataField="marca" HeaderText="Cantidad de artículos"
                        HeaderStyle-CssClass="bg-secondary  TextoContenido"  />
                  <asp:BoundField DataField="cantidad" HeaderText="Fecha Inicio"
                        HeaderStyle-CssClass="bg-secondary  TextoContenido"  />
                    <asp:BoundField DataField="tipoArticulo" HeaderText="Fecha Final"
                        HeaderStyle-CssClass="bg-secondary TextoContenido"  />
               </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="sqlDatos" runat="server" ConnectionString='<%$ ConnectionStrings:DbFFFConnectionString %>' 
                SelectCommand="SELECT [codigo], [nombre], [cantidad], [marca], [tipoArticulo] FROM [TblArticulo]" />
      </article>
     </section>
</asp:Content>
