<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmRegisterUser.aspx.cs" Inherits="AppWebShopFFF.frmRegisterUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="descripcion">
        <article class="article descripcion__article">
            <h2 class="descripcion__title">Registro de Usuario</h2>
            <p class="descripcion__info">Por favor, asegúrese de indicar la información personal de manera correcta. 
            </p>
        </article>
    </section>
    
    <section class="usuario">
        <article class="article usuario__data">
            <div class="user__div">
                <asp:Label CssClass="user__label" Text="Tipo de identificación:" runat="server" />
                <asp:DropDownList class="user__list" runat="server">
                    <asp:ListItem Text="Persona fisica" />
                    <asp:ListItem Text="Persona jurídica" />
                    <asp:ListItem Text="DIMEX" />
                    <asp:ListItem Text="NITE" />
                    <asp:ListItem Text="Extranjero" />
                </asp:DropDownList>
                <asp:Label class="user__label--doble" Text="Numero de idenificación:" runat="server" />
                <asp:TextBox class="user__textbox--doble" runat="server" />
          </div>
          <div class="user__div">
            <asp:Label  class="user__lable" Text="Nombre completo:" runat="server" />
            <asp:TextBox class="user__textbox" runat="server" />
         </div>
        <div class="user__div">
            <asp:Label class="user__lable" Text="Contraseña:" runat="server" />
            <asp:TextBox class="user__textbox" runat="server" />
            <asp:Label class="user__label--doble" Text="Confirmar contraseña:" runat="server" />
            <asp:TextBox class="user__textbox--doble" runat="server" />
        </div>
        <div class="user__div">
            <asp:Label class="user__lable" Text="Correo electrónico:" runat="server" />
            <asp:TextBox class="user__textbox" runat="server" />
        </div>
        <div class="user__div">
            <asp:Label class="user__lable" Text="Teléfono:" runat="server" />
            <asp:TextBox class="user__textbox" runat="server" />
        </div>
        <div class="user__div">
            <asp:Label class="user__lable" Text="Dirección de domicilio" runat="server" />
            <asp:TextBox class="user__textbox" runat="server" />
        </div>
        <div class="user__div--buton">
            <button class="user__button"><i class="fa fa-user-plus "></i> Ingresar</button>
        </div>
      
      </article>
     </section>
</asp:Content>
