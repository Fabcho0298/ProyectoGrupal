<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="FRMDataSheet.aspx.cs" Inherits="AppWebShopFFF.FRMDataSheet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="descripcion">
        <article class="article descripcion__article">
            <h3 class="descripcion__title">	Ficha técnica</h3>
            <p class="descripcion__info">La ficha técnica contiene todas las especificaciones y detalles de los diferentes instrumentos y accesorios musicales que vende la tienda “Las Tres F”.
            </p>
        </article>
    </section>

    <section class="section datasheed">
        
        <article class="article datasheed__data">
         
            <div class="datasheed__div">
                <img class="datasheed__img" src="www/img/guitarra1.png" alt="Imagen producto" />
            </div>
            <div class="datasheed__div">
                <asp:Label class="datasheed__label" text="Descripción detallada" runat="server" />
            </div>
            <div class="datasheed__div">
                <asp:TextBox TextMode="MultiLine" class="datasheed__textbox" runat="server" ID="txtName" Text="Gitarra de madera"></asp:TextBox>
            </div>
        </article >

        <article class="datasheed__data--secundary">
            <div class="datasheed__div">
                <asp:Label class="datasheed__label" text="Nombre del artículo" runat="server"/>
                <asp:Label class="datasheed__label" text="Guitarra XR" runat="server"/>
            </div>
            <div class="datasheed__div">
                <asp:Label class="datasheed__label" text="Precio con I.V.A:" runat="server" /><br />
                <asp:Label class="datasheed__label" text="250000"  runat="server" /><br />
            </div>
            <div class="datasheed__div">
                <asp:Label class="datasheed__label" text="Código:" runat="server" /><br />
                <asp:Label class="datasheed__label" text="3"  runat="server" /><br />
            </div>
            <div class="datasheed__div">
                <asp:Label class="datasheed__label" text="Marca:" runat="server" /><br />
                <asp:Label class="datasheed__label" text="Yamaha"  runat="server" /><br />
            </div>
            <div class="datasheed__div">
                <asp:Label class="datasheed__label" text="Peso:" runat="server" /><br />
                <asp:Label class="datasheed__label" text="1"  runat="server" /><br />
            </div>            
            <div class="datasheed__div">
                <button class="datasheed__button"><i class="fa fa-user-plus "></i> AÑADIR AL CARRITO</button>
            </div>
            <div class="datasheed__div">
                <button class="datasheed__button"><i class="fa fa-user-plus "></i> VOLVER A LA TIENDA</button>
            </div>
          </article>
    </section>
</asp:Content>
