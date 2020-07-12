<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmContact.aspx.cs" Inherits="AppWebShopFFF.frmContact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="descripcion">
        <article class="article descripcion__article">
            <h2 class="descripcion__title">Contáctanos</h2>
            <p class="descripcion__info">La constante comunicación con nuestros clientes es un aspecto sumamente fundamental; por lo cual, para efectos de recomendaciones, cotizaciones o consultas, no dudes en contactarnos. Es un completo privilegio servirles.
            </p>
        </article>
    </section>
    <section class="contact">
        <article class="article contact__form">
            <section class="contact__data">
                <span class="contact__span fa fa-user"></span>
                <span class="contact__span fa fa-envelope"></span>
                <span class="contact__span fa fa-phone-square"></span>
                <span class="contact__span fa fa-pencil-square-o"></span>
            </section>
            <section class="contact__data--texto">
                <asp:Label class="contact__label" Text="*Nombre completo" runat="server" />
                <asp:TextBox class="contact__textbox" runat="server" />

                <asp:Label class="contact__label" Text="*Correo electrónico" runat="server" />
                <asp:TextBox class="contact__textbox" runat="server" />

                <asp:Label class="contact__label" Text="*Número de teléfono" runat="server" />
                <asp:TextBox class="contact__textbox" runat="server" />

               <asp:Label class="contact__label" Text="*Digite aquí su mensaje hacia nosotros, haremos contacto con ustedes lo más pronto posible." runat="server" />
               <asp:TextBox textMode="MultiLine" class="contact__textbox" runat="server" />


               <button class="contact__button"><i class="fa fa-paper-plane-o"></i> Ingresar</button>
            </section>
            <section class="contact__data--links text-center">
                <div class="contact__div">
                    <a class="contact__link--location" href="#"><span class="fa fa-map-marker"></span></a>
                    <asp:Label Text="Some text" runat="server" />
                </div>
                <div>
                    <a class="contact__link--phone" href="#"><span class="fa fa-volume-control-phone"></span></a>
                    <asp:Label Text="26500000" runat="server" />
                    <a class="contact__link--what" href="#"><span class="fa fa-whatsapp"></span></a>
                    <asp:Label Text="85418080" runat="server" />
                </div>
                <div>
                    <a class="contact__link" href="#"><span class="fa fa-envelope-open-o"></span></a>
                    <asp:Label Text="FFF@gmail.com" runat="server" />
                </div>
                <div>
                    <a class="contact__link--face" href="#"><span class="fa fa-facebook-square"></span></a>
                    <a class="contact__link--tweet" href="#"><span class="fa fa-twitter-square"></span></a>
                    <a class="contact__link--inta" href="#"><span class="fa fa-instagram"></span></a>
                </div>
            </section>
        </article>
    </section>
</asp:Content>
