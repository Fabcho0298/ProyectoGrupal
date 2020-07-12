<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AppWebShopFFF.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>FFF</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"rel="stylesheet" />
    <link href="www/css/styles.css" rel="stylesheet" />
    <link href="www/css/bootstrap.min.css" rel="stylesheet" />
    
</head>
<body class="login">
    <form id="form1" runat="server">
        <article class="article login__principal">
        <section class="section login__section">
            <h2 class="login__title">Autentificación</h2>
        </section>
        <article class="section login__section">
             <div class="login__data">
                <asp:Label class="section__label" Text="Correo Electrónico:" runat="server" />
                <asp:TextBox class="section__textbox" runat="server" />
             </div>
             <div class="login__data">
                <asp:Label class="section__label--password" Text="Contraseña:" runat="server" />
                <asp:TextBox class="section__textbox" runat="server" />
             </div>
            <div class="login__data">
                <button class="login__button"><i class="fa fa-sign-in"></i> Ingresar</button>
             </div>
             <div class="login__data">
                <a class="section__link" href="#">Olvidé mi contraseña</a>
             </div>
             <div class="login__data">
                <p class="section__info">¿No tienes una cuenta?</p>
              </div>
              <div class="login__data">
                <a class="section__link" href="frmRegisterUser.aspx">REGÍSTRATE</a>
             </div>
        </article>
     </article>
    </form>
</body>
</html>
