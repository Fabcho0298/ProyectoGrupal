﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmInformationSuministrationSUS.aspx.cs" Inherits="AppWebShopFFF.frmInformationSuministrationSUS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="descripcion">
        <article class="article descripcion__article">
            <h3 class="descripcion__title">Consultar información suministrada (SUS)</h3>
            <p class="descripcion__info">Es esta sección, se podrá consultar, mediante un rango de fechas, la información con respecto a las System Usability Scale (SUS) efectuadas dentro de las fechas especificadas.
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
                        DataTextField="codigo" HeaderText="Código de encuesta"/>
                   <asp:BoundField DataField="nombre" 
                        HeaderText="Fecha de realización"
                        HeaderStyle-CssClass="bg-secondary  TextoContenido"  />
               </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="sqlDatos" runat="server" ConnectionString='<%$ ConnectionStrings:DbFFFConnectionString %>' 
                SelectCommand="SELECT [codigo], [nombre] FROM [TblArticulo]" />
      </article>
     </section>
</asp:Content>