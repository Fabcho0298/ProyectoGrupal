<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmEnableAccount.aspx.cs" Inherits="AppWebShopFFF.frmEnableAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="descripcion">
        <article class="article descripcion__article">
            <h3 class="descripcion__title">¿Qué lleva desactivar la cuenta?</h3>
            <p class="descripcion__info">Es importante aclarar que, si desactivas tu cuenta, esta pasará a estar inactiva; sin embargo, puedes volver a activarla en cualquier momento.
            </p>
        </article>
    </section>
    
    <section class="cuenta">
        <article class="article cuenta__data text-center">
            <div class="cuenta__div">
                <h3 class="cuenta__title">Digite su contraseña para confirmar la acción</h3>
          </div>
          <div class="cuenta__div">
            <asp:Label  class="cuenta__lable" Text="Nombre completo:" runat="server" />
            <asp:TextBox class="cuenta__textbox" runat="server" />
         </div>
        <div class="cuenta__div">
            <asp:Label class="cuenta__lable" Text="Contraseña:" runat="server" />
            <asp:TextBox class="cuenta__textbox" runat="server" />
        </div>
        <div class="cuenta__div--buton">
            <button class="cuenta__button"><i class="fa fa-minus-circle"></i> Ingresar</button>
        </div>
      
      </article>
     </section>
</asp:Content>
