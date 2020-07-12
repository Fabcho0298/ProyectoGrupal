<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="frmRegisterProduct.aspx.cs" Inherits="AppWebShopFFF.frmRegisterProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="descripcion">
        <article class="article descripcion__article">
            <h3 class="descripcion__title">Registro de artículos musicales</h3>
            <p class="descripcion__info">En esta sección, se deberá indicar toda la información correspondiente con la información del nuevo artículo musical.
            </p>
        </article>
    </section>

    <section class=" modify">
        
        <article class="article modify_data1">
         
            <div class="modify__div">
                <asp:Label class="modify__label" text="Codigo:" runat="server" />
                <asp:TextBox class="modify__textbox" runat="server"   placeholder="Insert the code of the product" ID="txtCode" required="true"></asp:TextBox>
           </div>
            <div class="modify__div">
                <asp:Label class="modify__label" text="Nombre:" runat="server" />
                <asp:TextBox class="modify__textbox" runat="server"  placeholder="Insert the name of the product" ID="txtName" required="true"></asp:TextBox>
            </div>
            <div class="modify__div">
                <asp:Label class="modify__label" text="Marca:" runat="server" />
                <asp:TextBox runat="server"  placeholder="Insert the brand of the product" ID="txtBrand"></asp:TextBox>
            </div>
            <div class="modify__div">
                <asp:Label class="modify__label" text="Peso en kg:" runat="server" />
                <asp:TextBox class="modify__textbox" runat="server"  placeholder="Insert the weight" ID="txtWeight"></asp:TextBox>
            </div>
            <div class="modify__div">
                <asp:Label class="modify__label" text="Cantidad:" runat="server" />
                <asp:TextBox class="modify__textbox" runat="server"  placeholder="Insert the cuantity" ID="txtCuantity"></asp:TextBox>

            </div>
            <div class="modify__div">
                <asp:Label class="modify__label" text="Description:" runat="server" />
            </div>
            <div class="modify__div">
                <asp:TextBox TextMode="MultiLine" class="modify__textbox" runat="server"  placeholder="Insert the description" ID="txtDescription"></asp:TextBox>
            </div>
            <div class="modify__div">
                <asp:Label class="modify_label" text="Precio Compra:" runat="server" />
                <asp:TextBox class="modify__textbox" runat="server"  placeholder="Insert the price value" ID="txtBuyPrice"></asp:TextBox>
            </div>
            <div class="modify__div">
                <asp:Label class="modify__label" text="Precio Venta:" runat="server" />
                <asp:TextBox class="modify__textbox" runat="server"  placeholder="Insert the sale value" ID="txtSalePrice"></asp:TextBox>
            </div>
            <div class="modify__div">
                <asp:Label class="modify__label" text="Precio Venta con I.V.A:" runat="server" />
                <asp:TextBox class="modify__texbox" runat="server"   placeholder="Insert the sale value with I.V.A" ID="txtSaleIVA"></asp:TextBox>
            </div>
        </article >

        <article class="register__data3">
            <div class="modify__div">
                <asp:Label class="modify__label" text="Article Type:" runat="server"/>
            </div>
            <div class="modify__div">
                <asp:RadioButtonList class="modify__list" runat="server" ID="rbChoice">
                    <asp:ListItem  Text="Instrument" />
                    <asp:ListItem   Text="Accesorie" />
                </asp:RadioButtonList>
            </div>
            <div class="modify__div--list">
                <asp:Label class="modify__label" text="Clasification:" runat="server" />
                <asp:DropDownList runat="server"  AutoPostBack="false" ID="cbxClass">
                    <asp:ListItem Text="Cordofonos" />
                    <asp:ListItem Text="Aerofonos" />
                    <asp:ListItem Text="Idionofonos" />
                    <asp:ListItem Text="Membranofonos" />
                    <asp:ListItem Text="Electronofonos" /> 
                    <asp:ListItem Text="Audio y Video" /> 
                </asp:DropDownList>
            </div>
            <div class="modify__div">
                <asp:Label class="modify__label" text="Photos:" ID="lbPhoto" runat="server" /><br />
                <span class="modify__span fa fa-user"></span>
            </div>
            <div class="modify__div">
                <asp:FileUpload FileName="Imagen" runat="server" ID="txtImage" ></asp:FileUpload><br /><br />
            </div>
            <div class="modify__div">
                <asp:Label class="modify__label" text="State:" runat="server"/>
            </div>
            <div class="modify__div">
                <asp:DropDownList runat="server" ID="cbxStated" AutoPostBack="false">
                    <asp:ListItem Text="Activo" />
                    <asp:ListItem Text="Inactivo" />
                </asp:DropDownList>
            </div>

            <div class="modify__div">
                <asp:Button class="modify__button fa fa-sign-in" Text="Agregar" id="btnAgregar" runat="server" Onclick="btnAgregar_Click"/>
            </div>
          </article>
    </section>
</asp:Content>
